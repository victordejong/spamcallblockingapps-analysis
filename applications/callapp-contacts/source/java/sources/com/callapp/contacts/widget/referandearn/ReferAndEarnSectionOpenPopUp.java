package com.callapp.contacts.widget.referandearn;

import android.content.Intent;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import nl.dionsegijn.konfetti.C20707b;
import nl.dionsegijn.konfetti.KonfettiView;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.p574a.C20702b;
import nl.dionsegijn.konfetti.p574a.C20705c;
import nl.dionsegijn.konfetti.p576c.C20709a;
import nl.dionsegijn.konfetti.p576c.C20710b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "()V", "ovViewCreated", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "", "window", "Landroid/view/Window;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp.class */
public final class ReferAndEarnSectionOpenPopUp extends DialogPopup {
    /* JADX WARN: Type inference failed for: r0v28, types: [boolean, android.widget.TextView, int, android.text.SpannableString, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v35, types: [nl.dionsegijn.konfetti.KonfettiView, android.view.ViewTreeObserver] */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v40 */
    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        SpannableString spannableString;
        View view = null;
        if (layoutInflater != null) {
            view = layoutInflater.inflate(2131558998, (ViewGroup) null);
        }
        if (view != null) {
            TextView openSectionTitle = (TextView) view.findViewById(2131363414);
            openSectionTitle.setTextColor(ThemeUtils.getColor(2131100140));
            C18524p.m3843b(openSectionTitle, "openSectionTitle");
            openSectionTitle.setText(Activities.getString(2131886628));
            ((TextView) view.findViewById(2131363413)).setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView = (TextView) view.findViewById(2131363411);
            textView.setTextColor(ThemeUtils.getColor(2131099919));
            final View view2 = view;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ReferAndEarnSectionOpenPopUp.this.dismiss();
                }
            });
            final View view3 = view;
            ((ImageView) view.findViewById(2131363795)).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ReferAndEarnSectionOpenPopUp.this.dismiss();
                }
            });
            ReferAndEarnDataManager.Companion.isPremiumRewarded();
            TextView textView2 = (TextView) view.findViewById(2131363412);
            DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f27121a;
            ThemeUtils.getColor(2131099784);
            ThemeUtils.getColor(2131100228);
            ThemeUtils.getColor(2131099784);
            final ?? openSectionLeftButton = spannableString != null ? new SpannableString(Activities.getString(2131887548)) : new SpannableString(Activities.getString(2131886550));
            DialogMessageWithTopImageNew.Companion.m27968a(openSectionLeftButton, 2131232141, Integer.valueOf((int) openSectionLeftButton), Integer.valueOf((int) openSectionLeftButton), 0, Integer.valueOf((int) openSectionLeftButton), openSectionLeftButton, null, true, true);
            if (openSectionLeftButton != 0) {
                C18524p.m3843b(openSectionLeftButton, "openSectionSubtitle");
                openSectionLeftButton.setText(Activities.getString(2131887546));
                C18524p.m3843b(openSectionLeftButton, "openSectionLeftButton");
                openSectionLeftButton.setVisibility(8);
            } else {
                C18524p.m3843b(openSectionLeftButton, "openSectionSubtitle");
                openSectionLeftButton.setText(Activities.getString(2131887555));
                C18524p.m3843b(openSectionLeftButton, "openSectionLeftButton");
                openSectionLeftButton.setText(Activities.getString(2131886564));
            }
            final View view4 = view;
            final View view5 = view;
            openSectionLeftButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view6) {
                    if (openSectionLeftButton) {
                        Prefs.f26339cJ.set(Boolean.TRUE);
                        AndroidUtils.m27633a(view4.getContext(), Activities.getString(2131887415));
                    } else {
                        Activities.m27656b(this.getActivity(), new Intent(this.getActivity(), MarketPlaceActivity.class));
                    }
                    AnalyticsManager.get().m28450a(Constants.REFER_AND_EARN, "ClickInviteInstallPopUp");
                    this.dismiss();
                }
            });
            ViewUtils.m27299b(view.findViewById(2131363794), 2131232170, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099784), 2);
            KonfettiView konfettiView = (KonfettiView) view.findViewById(2131364519);
            final ?? viewTreeObserver = view.getViewTreeObserver();
            final View view6 = view;
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    view6.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    C20707b c20707b = new C20707b(KonfettiView.this);
                    int[] colors = {ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099783), ThemeUtils.getColor(2131099786)};
                    C18524p.m3840d(colors, "colors");
                    c20707b.f67142c = colors;
                    c20707b.f67141b.f67155a = Math.toRadians(0.0d);
                    c20707b.f67141b.f67156b = Double.valueOf(Math.toRadians(359.0d));
                    c20707b.f67141b.f67157c = BitmapDescriptorFactory.HUE_RED;
                    C20710b c20710b = c20707b.f67141b;
                    Float valueOf = Float.valueOf(3.0f);
                    C18524p.m3851a((Object) valueOf);
                    Float f = valueOf;
                    if (valueOf.floatValue() < BitmapDescriptorFactory.HUE_RED) {
                        f = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
                    }
                    c20710b.f67158d = f;
                    c20707b.f67145f.setFadeOut(true);
                    c20707b.f67145f.setTimeToLive(2000L);
                    Shape[] shapes = {Shape.Square.INSTANCE, Shape.Circle.INSTANCE};
                    C18524p.m3840d(shapes, "shapes");
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < 2; i++) {
                        Shape shape = shapes[i];
                        if (shape instanceof Shape) {
                            arrayList.add(shape);
                        }
                    }
                    Object[] array = arrayList.toArray(new Shape[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    c20707b.f67144e = (Shape[]) array;
                    C20707b particleSystem = c20707b.m619a(new Size(12, BitmapDescriptorFactory.HUE_RED, 2, null));
                    float width = view6.getWidth();
                    C20709a c20709a = particleSystem.f67140a;
                    c20709a.f67150a = -50.0f;
                    c20709a.f67151b = Float.valueOf(width + 50.0f);
                    C20709a c20709a2 = particleSystem.f67140a;
                    c20709a2.f67152c = -50.0f;
                    c20709a2.f67153d = Float.valueOf(-50.0f);
                    particleSystem.f67147h = new C20702b(particleSystem.f67140a, particleSystem.f67141b, particleSystem.f67146g, particleSystem.f67143d, particleSystem.f67144e, particleSystem.f67142c, particleSystem.f67145f, C20705c.m621a(new C20705c(), 50, C20705c.f67132b), 0L, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, null);
                    KonfettiView konfettiView2 = particleSystem.f67148i;
                    C18524p.m3840d(particleSystem, "particleSystem");
                    konfettiView2.f67092a.add(particleSystem);
                    if (konfettiView2.f67093b != null) {
                        konfettiView2.f67092a.size();
                    }
                    konfettiView2.invalidate();
                }
            });
        }
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void setDialogWindowSize(Window window) {
        C18524p.m3840d(window, "window");
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(2131100145);
    }
}
