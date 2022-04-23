package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnHintView;", "Landroidx/fragment/app/Fragment;", "()V", "referAndEarnShareOptionsFragmentListener", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;", "onAttach", "", "context", "Landroid/content/Context;", "onCreateView", "Landroid/view/View;", "layoutInflater", "Landroid/view/LayoutInflater;", "viewGroup", "Landroid/view/ViewGroup;", "bundle", "Landroid/os/Bundle;", "onDetach", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnHintView.class */
public final class ReferAndEarnHintView extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f16867a = new Companion(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f16868c;

    /* renamed from: b  reason: collision with root package name */
    private ReferAndEarnShareOptionsFragmentListener f16869b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnHintView$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnHintView$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        String cls = ReferAndEarnHintView.class.toString();
        p.b(cls, "ReferAndEarnHintView::class.java.toString()");
        f16868c = cls;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        p.d(context, "context");
        super.onAttach(context);
        try {
            Fragment parentFragment = getParentFragment();
            if (parentFragment != null) {
                this.f16869b = (ReferAndEarnShareOptionsFragmentListener) parentFragment;
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener");
        } catch (ClassCastException e) {
            throw new ClassCastException(String.valueOf(getActivity()) + " must implement ReferAndEarnShareOptionsFragmentListener ");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(layoutInflater, "layoutInflater");
        View inflate = layoutInflater.inflate(2131558996, viewGroup, false);
        TextView hintTitle = (TextView) inflate.findViewById(2131362973);
        TextView hintSubtitle = (TextView) inflate.findViewById(2131362971);
        TextView textView = (TextView) inflate.findViewById(2131362970);
        TextView hintLeftButton = (TextView) inflate.findViewById(2131362969);
        TextView hintBottomText = (TextView) inflate.findViewById(2131362965);
        hintTitle.setTextColor(ThemeUtils.getColor(2131100140));
        p.b(hintTitle, "hintTitle");
        hintTitle.setText(Activities.getString(2131887551));
        hintSubtitle.setTextColor(ThemeUtils.getColor(2131100108));
        p.b(hintSubtitle, "hintSubtitle");
        hintSubtitle.setText(Activities.getString(2131887552));
        DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f15494a;
        DialogMessageWithTopImageNew.Companion.a(textView, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131099784)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887065)), null, true, true);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnHintView$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReferAndEarnShareOptionsFragmentListener referAndEarnShareOptionsFragmentListener;
                referAndEarnShareOptionsFragmentListener = ReferAndEarnHintView.this.f16869b;
                if (referAndEarnShareOptionsFragmentListener != null) {
                    referAndEarnShareOptionsFragmentListener.u_();
                }
            }
        });
        p.b(hintBottomText, "hintBottomText");
        hintBottomText.setText(Activities.getString(2131887536));
        hintBottomText.setTextColor(ThemeUtils.getColor(2131100140));
        hintLeftButton.setTextColor(ThemeUtils.getColor(2131099919));
        p.b(hintLeftButton, "hintLeftButton");
        hintLeftButton.setText(Activities.getString(2131886946));
        hintLeftButton.setAllCaps(true);
        hintLeftButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnHintView$onCreateView$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReferAndEarnShareOptionsFragmentListener referAndEarnShareOptionsFragmentListener;
                referAndEarnShareOptionsFragmentListener = ReferAndEarnHintView.this.f16869b;
                if (referAndEarnShareOptionsFragmentListener != null) {
                    referAndEarnShareOptionsFragmentListener.c();
                }
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f16869b = null;
    }
}
