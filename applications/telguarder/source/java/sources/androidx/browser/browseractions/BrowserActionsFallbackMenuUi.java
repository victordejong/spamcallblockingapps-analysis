package androidx.browser.browseractions;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.browser.C0143R;
import androidx.core.widget.TextViewCompat;
import androidx.webkit.internal.AssetHelper;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuUi.class */
public class BrowserActionsFallbackMenuUi implements AdapterView.OnItemClickListener {
    private static final String TAG = "BrowserActionskMenuUi";
    private BrowserActionsFallbackMenuDialog mBrowserActionsDialog;
    final Context mContext;
    private final List<BrowserActionItem> mMenuItems;
    BrowserActionsFallMenuUiListener mMenuUiListener;
    final Uri mUri;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener.class */
    public interface BrowserActionsFallMenuUiListener {
        void onMenuShown(View view);
    }

    public BrowserActionsFallbackMenuUi(Context context, Uri uri, List<BrowserActionItem> list) {
        this.mContext = context;
        this.mUri = uri;
        this.mMenuItems = buildFallbackMenuItemList(list);
    }

    private Runnable buildCopyAction() {
        return new Runnable() { // from class: androidx.browser.browseractions.BrowserActionsFallbackMenuUi.1
            @Override // java.lang.Runnable
            public void run() {
                ((ClipboardManager) BrowserActionsFallbackMenuUi.this.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("url", BrowserActionsFallbackMenuUi.this.mUri.toString()));
                Toast.makeText(BrowserActionsFallbackMenuUi.this.mContext, BrowserActionsFallbackMenuUi.this.mContext.getString(C0143R.string.copy_toast_msg), 0).show();
            }
        };
    }

    private List<BrowserActionItem> buildFallbackMenuItemList(List<BrowserActionItem> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BrowserActionItem(this.mContext.getString(C0143R.string.fallback_menu_item_open_in_browser), buildOpenInBrowserAction()));
        arrayList.add(new BrowserActionItem(this.mContext.getString(C0143R.string.fallback_menu_item_copy_link), buildCopyAction()));
        arrayList.add(new BrowserActionItem(this.mContext.getString(C0143R.string.fallback_menu_item_share_link), buildShareAction()));
        arrayList.addAll(list);
        return arrayList;
    }

    private PendingIntent buildOpenInBrowserAction() {
        return PendingIntent.getActivity(this.mContext, 0, new Intent("android.intent.action.VIEW", this.mUri), 0);
    }

    private PendingIntent buildShareAction() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", this.mUri.toString());
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        return PendingIntent.getActivity(this.mContext, 0, intent, 0);
    }

    private BrowserActionsFallbackMenuView initMenuView(View view) {
        BrowserActionsFallbackMenuView browserActionsFallbackMenuView = (BrowserActionsFallbackMenuView) view.findViewById(C0143R.C0146id.browser_actions_menu_view);
        final TextView textView = (TextView) view.findViewById(C0143R.C0146id.browser_actions_header_text);
        textView.setText(this.mUri.toString());
        textView.setOnClickListener(new View.OnClickListener() { // from class: androidx.browser.browseractions.BrowserActionsFallbackMenuUi.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TextViewCompat.getMaxLines(textView) == Integer.MAX_VALUE) {
                    textView.setMaxLines(1);
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                    return;
                }
                textView.setMaxLines(Integer.MAX_VALUE);
                textView.setEllipsize(null);
            }
        });
        ListView listView = (ListView) view.findViewById(C0143R.C0146id.browser_actions_menu_items);
        listView.setAdapter((ListAdapter) new BrowserActionsFallbackMenuAdapter(this.mMenuItems, this.mContext));
        listView.setOnItemClickListener(this);
        return browserActionsFallbackMenuView;
    }

    public void displayMenu() {
        final View inflate = LayoutInflater.from(this.mContext).inflate(C0143R.layout.browser_actions_context_menu_page, (ViewGroup) null);
        BrowserActionsFallbackMenuDialog browserActionsFallbackMenuDialog = new BrowserActionsFallbackMenuDialog(this.mContext, initMenuView(inflate));
        this.mBrowserActionsDialog = browserActionsFallbackMenuDialog;
        browserActionsFallbackMenuDialog.setContentView(inflate);
        if (this.mMenuUiListener != null) {
            this.mBrowserActionsDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: androidx.browser.browseractions.BrowserActionsFallbackMenuUi.2
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    if (BrowserActionsFallbackMenuUi.this.mMenuUiListener == null) {
                        Log.e(BrowserActionsFallbackMenuUi.TAG, "Cannot trigger menu item listener, it is null");
                    } else {
                        BrowserActionsFallbackMenuUi.this.mMenuUiListener.onMenuShown(inflate);
                    }
                }
            });
        }
        this.mBrowserActionsDialog.show();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        BrowserActionItem browserActionItem = this.mMenuItems.get(i);
        if (browserActionItem.getAction() != null) {
            try {
                browserActionItem.getAction().send();
            } catch (PendingIntent.CanceledException e) {
                Log.e(TAG, "Failed to send custom item action", e);
            }
        } else if (browserActionItem.getRunnableAction() != null) {
            browserActionItem.getRunnableAction().run();
        }
        BrowserActionsFallbackMenuDialog browserActionsFallbackMenuDialog = this.mBrowserActionsDialog;
        if (browserActionsFallbackMenuDialog == null) {
            Log.e(TAG, "Cannot dismiss dialog, it has already been dismissed.");
        } else {
            browserActionsFallbackMenuDialog.dismiss();
        }
    }

    void setMenuUiListener(BrowserActionsFallMenuUiListener browserActionsFallMenuUiListener) {
        this.mMenuUiListener = browserActionsFallMenuUiListener;
    }
}
