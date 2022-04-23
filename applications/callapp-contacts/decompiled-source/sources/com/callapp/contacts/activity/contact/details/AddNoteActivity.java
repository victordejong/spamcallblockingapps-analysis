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

    /* renamed from: a  reason: collision with root package name */
    private final int f11946a = ThemeUtils.getColor(2131100140);

    /* renamed from: b  reason: collision with root package name */
    private String f11947b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f11948c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f11949d;
    private String e;
    private int f;

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        a(this.f11948c.getText().toString());
    }

    static /* synthetic */ void a(AddNoteActivity addNoteActivity, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str + "\n\n" + Activities.getString(2131887325) + StringUtils.SPACE + Activities.a(2131886719, HttpUtils.getCallAppDomain()));
        Activities.a(addNoteActivity, intent);
    }

    private void a(final String str) {
        Intent putExtra = new Intent().putExtra("note", str);
        if (com.callapp.framework.util.StringUtils.b((CharSequence) this.f11947b)) {
            putExtra.putExtra(Constants.EXTRA_CONTACT_ID, this.f11947b);
        }
        setResult(-1, putExtra);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.4
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r8v0 */
            /* JADX WARN: Type inference failed for: r8v1 */
            /* JADX WARN: Type inference failed for: r8v2, types: [long] */
            /* JADX WARN: Type inference failed for: r8v4 */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // com.callapp.contacts.manager.task.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void doTask() {
                /*
                    r5 = this;
                    r0 = 0
                    r6 = r0
                    r0 = r6
                    r8 = r0
                    r0 = r5
                    com.callapp.contacts.activity.contact.details.AddNoteActivity r0 = com.callapp.contacts.activity.contact.details.AddNoteActivity.this     // Catch: NumberFormatException -> 0x002f
                    java.lang.String r0 = com.callapp.contacts.activity.contact.details.AddNoteActivity.e(r0)     // Catch: NumberFormatException -> 0x002f
                    boolean r0 = com.callapp.framework.util.StringUtils.b(r0)     // Catch: NumberFormatException -> 0x002f
                    if (r0 == 0) goto L_0x001f
                    r0 = r5
                    com.callapp.contacts.activity.contact.details.AddNoteActivity r0 = com.callapp.contacts.activity.contact.details.AddNoteActivity.this     // Catch: NumberFormatException -> 0x002f
                    java.lang.String r0 = com.callapp.contacts.activity.contact.details.AddNoteActivity.e(r0)     // Catch: NumberFormatException -> 0x002f
                    java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: NumberFormatException -> 0x002f
                    long r0 = r0.longValue()     // Catch: NumberFormatException -> 0x002f
                    r8 = r0
                L_0x001f:
                    r0 = r8
                    r1 = r5
                    java.lang.String r1 = r5
                    r2 = r5
                    com.callapp.contacts.activity.contact.details.AddNoteActivity r2 = com.callapp.contacts.activity.contact.details.AddNoteActivity.this
                    int r2 = com.callapp.contacts.activity.contact.details.AddNoteActivity.f(r2)
                    com.callapp.contacts.loader.device.NoteLoader.a(r0, r1, r2)
                    return
                L_0x002f:
                    r10 = move-exception
                    r0 = r6
                    r8 = r0
                    goto L_0x001f
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.AddNoteActivity.AnonymousClass4.doTask():void");
            }
        }.execute();
        finish();
    }

    public static void a(String str, Context context) {
        if (com.callapp.framework.util.StringUtils.b((CharSequence) str)) {
            Intent intent = new Intent(context, AddNoteActivity.class);
            intent.putExtra(Constants.EXTRA_CONTACT_ID, str);
            Activities.b(context, intent);
        }
    }

    static /* synthetic */ void g(AddNoteActivity addNoteActivity) {
        PopupManager.get().a(addNoteActivity, new DialogSimpleMessage(Activities.getString(2131886733), Activities.getString(2131886211), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AddNoteActivity.this.f11948c.setText("");
                AddNoteActivity.this.a();
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
        a(this.e);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setKeyguardDismissAndScreenWindowFlags();
        super.onCreate(bundle);
        this.f11948c = (EditText) findViewById(2131362681);
        this.f11949d = (TextView) findViewById(2131363736);
        ((CardView) findViewById(2131362679)).setCardBackgroundColor(ThemeUtils.getColor(2131099686));
        TextView textView = (TextView) findViewById(2131362377);
        textView.setText(Activities.getString(2131886564));
        textView.setTextColor(this.f11946a);
        this.f11949d.setText(Activities.getString(2131887588));
        this.f11949d.setTextColor(ThemeUtils.getColor(2131099784));
        ((ImageView) findViewById(2131363384)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.f11948c.setTextColor(this.f11946a);
        this.f11948c.setHint(Activities.getString(2131888246));
        this.f11948c.setHintTextColor(ThemeUtils.getColor(2131099930));
        this.f11948c.addTextChangedListener(new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!com.callapp.framework.util.StringUtils.b(editable.toString(), AddNoteActivity.this.e)) {
                    AddNoteActivity.this.f11949d.setVisibility(0);
                } else {
                    AddNoteActivity.this.f11949d.setVisibility(4);
                }
            }
        });
        onNewIntent(getIntent());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getExtras().containsKey(Constants.EXTRA_CONTACT_ID)) {
            this.f11947b = intent.getStringExtra(Constants.EXTRA_CONTACT_ID);
        }
        String stringExtra = intent.getStringExtra("note");
        String str = stringExtra;
        if (stringExtra == null) {
            str = "";
        }
        this.f = intent.getIntExtra("position", -1);
        this.e = str;
        this.f11948c.setText("");
        if (com.callapp.framework.util.StringUtils.b((CharSequence) str)) {
            String str2 = str;
            if (str.startsWith("urgent!")) {
                str2 = str.substring(7);
            }
            this.f11948c.setText(str2);
            Selection.setSelection(this.f11948c.getText(), str2.length());
        }
        Activities.a(this.f11948c, 200);
    }

    public void onNotesButtonsItemClicked(View view) {
        int id = view.getId();
        if (id == 2131362377) {
            setResult(0, null);
            finish();
        } else if (id == 2131363384) {
            final AdapterText.AdapterEvents adapterEvents = new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.details.AddNoteActivity.5
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    if (i == 2131886733) {
                        AddNoteActivity.g(AddNoteActivity.this);
                    } else if (i == 2131887667) {
                        AddNoteActivity addNoteActivity = AddNoteActivity.this;
                        AddNoteActivity.a(addNoteActivity, addNoteActivity.e);
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
                    AndroidUtils.a((Activity) AddNoteActivity.this);
                    dialogList.dismiss();
                    AdapterText.AdapterEvents adapterEvents2 = adapterEvents;
                    if (adapterEvents2 != null) {
                        adapterEvents2.onRowClicked(i);
                    }
                }
            });
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().a(this, dialogList);
        } else if (id == 2131363736) {
            a();
        }
    }
}
