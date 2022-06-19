package com.callapp.contacts.activity.contact.details;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.loader.device.NoteLoader;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AddNoteActivity.class */
public class AddNoteActivity extends BaseNoTitleActivity {

    /* renamed from: a */
    private final int f21584a = ThemeUtils.getColor(2131100140);

    /* renamed from: b */
    private String f21585b;

    /* renamed from: c */
    private EditText f21586c;

    /* renamed from: d */
    private TextView f21587d;

    /* renamed from: e */
    private String f21588e;

    /* renamed from: f */
    private int f21589f;

    /* renamed from: a */
    public void m31042a() {
        m31039a(this.f21586c.getText().toString());
    }

    /* renamed from: a */
    static /* synthetic */ void m31040a(AddNoteActivity addNoteActivity, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str + "\n\n" + Activities.getString(2131887325) + StringUtils.SPACE + Activities.m27697a(2131886719, HttpUtils.getCallAppDomain()));
        Activities.m27685a(addNoteActivity, intent);
    }

    /* renamed from: a */
    private void m31039a(final String str) {
        Intent putExtra = new Intent().putExtra("note", str);
        if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) this.f21585b)) {
            putExtra.putExtra(Constants.EXTRA_CONTACT_ID, this.f21585b);
        }
        setResult(-1, putExtra);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.4
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v12, types: [long] */
            /* JADX WARN: Type inference failed for: r0v3 */
            /* JADX WARN: Type inference failed for: r8v0 */
            /* JADX WARN: Type inference failed for: r8v1 */
            /* JADX WARN: Type inference failed for: r8v2 */
            /* JADX WARN: Type inference failed for: r8v3 */
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ?? r8 = false;
                try {
                    if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) AddNoteActivity.this.f21585b)) {
                        r8 = Long.valueOf(AddNoteActivity.this.f21585b).longValue();
                    }
                } catch (NumberFormatException e) {
                    r8 = false;
                }
                NoteLoader.m28841a(r8 == true ? 1L : 0L, str, AddNoteActivity.this.f21589f);
            }
        }.execute();
        finish();
    }

    /* renamed from: a */
    public static void m31038a(String str, Context context) {
        if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) str)) {
            Intent intent = new Intent(context, AddNoteActivity.class);
            intent.putExtra(Constants.EXTRA_CONTACT_ID, str);
            Activities.m27656b(context, intent);
        }
    }

    /* renamed from: g */
    static /* synthetic */ void m31032g(AddNoteActivity addNoteActivity) {
        PopupManager.get().m28209a(addNoteActivity, new DialogSimpleMessage(Activities.getString(2131886733), Activities.getString(2131886211), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AddNoteActivity.this.f21586c.setText("");
                AddNoteActivity.this.m31042a();
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }));
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558450;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m31039a(this.f21588e);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setKeyguardDismissAndScreenWindowFlags();
        super.onCreate(bundle);
        this.f21586c = (EditText) findViewById(2131362681);
        this.f21587d = (TextView) findViewById(2131363736);
        ((CardView) findViewById(2131362679)).setCardBackgroundColor(ThemeUtils.getColor(2131099686));
        TextView textView = (TextView) findViewById(2131362377);
        textView.setText(Activities.getString(2131886564));
        textView.setTextColor(this.f21584a);
        this.f21587d.setText(Activities.getString(2131887588));
        this.f21587d.setTextColor(ThemeUtils.getColor(2131099784));
        ((ImageView) findViewById(2131363384)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.f21586c.setTextColor(this.f21584a);
        this.f21586c.setHint(Activities.getString(2131888246));
        this.f21586c.setHintTextColor(ThemeUtils.getColor(2131099930));
        this.f21586c.addTextChangedListener(new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!com.callapp.framework.util.StringUtils.m26042b(editable.toString(), AddNoteActivity.this.f21588e)) {
                    AddNoteActivity.this.f21587d.setVisibility(0);
                } else {
                    AddNoteActivity.this.f21587d.setVisibility(4);
                }
            }
        });
        onNewIntent(getIntent());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getExtras().containsKey(Constants.EXTRA_CONTACT_ID)) {
            this.f21585b = intent.getStringExtra(Constants.EXTRA_CONTACT_ID);
        }
        String stringExtra = intent.getStringExtra("note");
        String str = stringExtra;
        if (stringExtra == null) {
            str = "";
        }
        this.f21589f = intent.getIntExtra("position", -1);
        this.f21588e = str;
        this.f21586c.setText("");
        if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) str)) {
            String str2 = str;
            if (str.startsWith("urgent!")) {
                str2 = str.substring(7);
            }
            this.f21586c.setText(str2);
            Selection.setSelection(this.f21586c.getText(), str2.length());
        }
        Activities.m27669a(this.f21586c, 200);
    }

    public void onNotesButtonsItemClicked(View view) {
        int id = view.getId();
        if (id == 2131362377) {
            setResult(0, null);
            finish();
        } else if (id != 2131363384) {
            if (id != 2131363736) {
                return;
            }
            m31042a();
        } else {
            final AdapterText.AdapterEvents adapterEvents = new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.5
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    if (i == 2131886733) {
                        AddNoteActivity.m31032g(AddNoteActivity.this);
                    } else if (i != 2131887667) {
                    } else {
                        AddNoteActivity addNoteActivity = AddNoteActivity.this;
                        AddNoteActivity.m31040a(addNoteActivity, addNoteActivity.f21588e);
                    }
                }
            };
            AdapterIconAndText.ItemIconAndText itemIconAndText = new AdapterIconAndText.ItemIconAndText(2131231879, 2131887667);
            AdapterIconAndText.ItemIconAndText itemIconAndText2 = new AdapterIconAndText.ItemIconAndText(2131231472, 2131886733);
            final DialogList dialogList = new DialogList(null);
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, itemIconAndText, itemIconAndText2);
            adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.6
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    AndroidUtils.m27635a((Activity) AddNoteActivity.this);
                    dialogList.dismiss();
                    AdapterText.AdapterEvents adapterEvents2 = adapterEvents;
                    if (adapterEvents2 != null) {
                        adapterEvents2.onRowClicked(i);
                    }
                }
            });
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().m28209a(this, dialogList);
        }
    }
}
