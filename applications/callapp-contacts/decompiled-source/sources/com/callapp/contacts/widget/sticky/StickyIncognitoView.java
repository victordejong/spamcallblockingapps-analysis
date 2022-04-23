package com.callapp.contacts.widget.sticky;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.popup.contact.DialogBulletListTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyIncognitoView.class */
public class StickyIncognitoView extends ConstraintLayout {
    public StickyIncognitoView(Context context) {
        this(context, null);
    }

    public StickyIncognitoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickyIncognitoView(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2131558846, (ViewGroup) this, true);
        if (Prefs.fP.get().booleanValue() || DateUtils.a(Prefs.fR.get(), new Date(), TimeUnit.DAYS) <= 3) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        Prefs.fP.set(Boolean.TRUE);
        setBackgroundResource(2131232212);
        ((TextView) findViewById(2131363990)).setText(Activities.getString(2131887043));
        findViewById(2131363988).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.sticky._$$Lambda$StickyIncognitoView$3z0u7o7BAAMEdqrJG8Z1ZDotI4s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickyIncognitoView.this.a(context, view);
            }
        });
        String string = Activities.getString(2131887042);
        String string2 = Activities.getString(2131887030);
        SpannableString spannableString = new SpannableString(string);
        if (StringUtils.c(string, string2)) {
            spannableString.setSpan(new StyleSpan(1), string.indexOf(string2), spannableString.length(), 33);
        }
        ((TextView) findViewById(2131363989)).setText(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, View view) {
        setVisibility(8);
        PopupManager.get().a(context, new DialogBulletListTopImage(2131232023, Activities.getString(2131887036), new int[]{2131887032, 2131887034, 2131887035, 2131887033, 2131887031}, Activities.getString(2131887338), _$$Lambda$StickyIncognitoView$nYFgWyIA9G4ZY0ob_nENGX8b2f4.INSTANCE, null, 0, null));
    }
}
