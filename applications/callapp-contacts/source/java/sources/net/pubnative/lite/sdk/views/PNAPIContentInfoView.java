package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.pubnative.lite.sdk.source.pnapi.C20620R;
import net.pubnative.lite.sdk.utils.PNBitmapDownloader;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/PNAPIContentInfoView.class */
public class PNAPIContentInfoView extends RelativeLayout implements View.OnClickListener {
    private static final String TAG = "PNAPIContentInfoView";
    private Runnable mCloseTask = new Runnable() { // from class: net.pubnative.lite.sdk.views.PNAPIContentInfoView.1
        @Override // java.lang.Runnable
        public void run() {
            PNAPIContentInfoView.this.closeLayout();
        }
    };
    private ImageView mContentInfoIcon;
    private TextView mContentInfoText;
    private Handler mHandler;

    public PNAPIContentInfoView(Context context) {
        super(context);
        init(context);
    }

    public PNAPIContentInfoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public PNAPIContentInfoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public void closeLayout() {
        this.mContentInfoText.setVisibility(8);
    }

    public void init(Context context) {
        LayoutInflater from = LayoutInflater.from(context);
        this.mHandler = new Handler(Looper.getMainLooper());
        RelativeLayout relativeLayout = (RelativeLayout) from.inflate(C20620R.layout.content_info_layout, (ViewGroup) this, true);
        this.mContentInfoIcon = (ImageView) relativeLayout.findViewById(C20620R.C20621id.ic_context_icon);
        this.mContentInfoText = (TextView) relativeLayout.findViewById(C20620R.C20621id.tv_context_text);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        openLayout();
    }

    public void openLayout() {
        this.mContentInfoText.setVisibility(0);
        this.mHandler.postDelayed(this.mCloseTask, 3000L);
    }

    public void setContextText(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.mContentInfoText.setText(str);
    }

    public void setIconClickUrl(final String str) {
        this.mContentInfoText.setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.views.PNAPIContentInfoView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setFlags(268435456);
                    intent.setData(Uri.parse(str));
                    view.getContext().startActivity(intent);
                } catch (Exception e) {
                    Log.e(PNAPIContentInfoView.TAG, "error on click content info text", e);
                }
            }
        });
    }

    public void setIconUrl(String str) {
        new PNBitmapDownloader().download(str, this.mContentInfoIcon.getWidth(), this.mContentInfoIcon.getHeight(), new PNBitmapDownloader.DownloadListener() { // from class: net.pubnative.lite.sdk.views.PNAPIContentInfoView.2
            @Override // net.pubnative.lite.sdk.utils.PNBitmapDownloader.DownloadListener
            public void onDownloadFailed(String str2, Exception exc) {
            }

            @Override // net.pubnative.lite.sdk.utils.PNBitmapDownloader.DownloadListener
            public void onDownloadFinish(String str2, Bitmap bitmap) {
                PNAPIContentInfoView.this.mContentInfoIcon.setImageBitmap(bitmap);
            }
        });
    }
}
