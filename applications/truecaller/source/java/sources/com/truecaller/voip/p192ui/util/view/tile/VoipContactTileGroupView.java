package com.truecaller.voip.p192ui.util.view.tile;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.HeartbeatRippleView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.p192ui.util.drawable.RingDrawableState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p619d.p628c.p629a.AbstractC11198o;
import p193e.p194a.p619d.p628c.p629a.C11179b;
import p193e.p194a.p619d.p628c.p629a.C11180c;
import p193e.p194a.p619d.p628c.p629a.C11181d;
import p193e.p194a.p619d.p628c.p629a.C11182e;
import p193e.p194a.p619d.p628c.p629a.C11189i;
import p193e.p194a.p619d.p628c.p629a.C11190j;
import p193e.p194a.p619d.p628c.p629a.C11191k;
import p193e.p194a.p619d.p628c.p629a.C11192l;
import p193e.p194a.p619d.p628c.p629a.C11193m;
import p193e.p194a.p619d.p628c.p629a.p630a.C11167a;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11199a;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11201c;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11230o;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11206h;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11228m;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11232q;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11239s;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11241t;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11243u;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11245w;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p654s.C11792h;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.d0.h;
import s1.d0.j;
import s1.f0.r;
import s1.u.z;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018��2\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\tJ\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\tJ\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u000eJ\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001d\u0010\u0007J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001f\u0010\u0007J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010\u000eJ\u0017\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\tJ\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\tJ\u000f\u00104\u001a\u00020\u0005H\u0002¢\u0006\u0004\b4\u0010\tJ\u0019\u00107\u001a\u0004\u0018\u0001062\u0006\u00105\u001a\u00020.H\u0002¢\u0006\u0004\b7\u00108J\u0019\u0010:\u001a\u00020\u00052\b\b\u0001\u00109\u001a\u00020.H\u0002¢\u0006\u0004\b:\u00101J!\u0010>\u001a\u00020\u00052\b\b\u0001\u0010;\u001a\u00020.2\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\b>\u0010?J\u001d\u0010B\u001a\u00020\u00052\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000b0@H\u0002¢\u0006\u0004\bB\u0010CR\"\u0010K\u001a\u00020D8��@��X\u0081.¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u0016\u0010N\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR2\u0010S\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002060Oj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u000206`P8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bU\u0010VR\u001c\u0010Z\u001a\b\u0012\u0004\u0012\u0002060@8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bX\u0010YR\u0016\u0010^\u001a\u00020[8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\\\u0010]¨\u0006_"}, d2 = {"Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/d/c/a/p/a/e;", "", "label", "Ls1/s;", "setSpamTheme", "(Ljava/lang/String;)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "visible", "d0", "(Z)V", "u0", "Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;", "state", "setRingState", "(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V", "p", "s0", "loading", "n0", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarConfig", "setAvatarConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "profileName", "setProfileName", AnalyticsConstants.PHONE, "setProfilePhone", "Le/a/d/c/a/o;", "voipUserBadgeTheme", "D", "(Le/a/d/c/a/o;)V", "modeIncoming", "setModeIncoming", "Le/a/d/c0/z1/e;", "peer", "g", "(Le/a/d/c0/z1/e;)V", "Le/a/d/v/l/a;", "call", "setCallOnTile", "(Le/a/d/v/l/a;)V", "", "id", "h0", "(I)V", "C", "H0", "h1", "peerId", "Le/a/d/c/a/p/a/w;", "g1", "(I)Le/a/d/c/a/p/a/w;", "stateId", "j1", "flowId", "", "referencedIds", "i1", "(I[I)V", "", "sizeArray", "k1", "([Ljava/lang/Boolean;)V", "Le/a/d/c/a/p/a/c;", "v", "Le/a/d/c/a/p/a/c;", "getPresenter$voip_release", "()Le/a/d/c/a/p/a/c;", "setPresenter$voip_release", "(Le/a/d/c/a/p/a/c;)V", "presenter", "y", "Z", "isModeIncoming", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "z", "Ljava/util/LinkedHashMap;", "viewMap", "Le/a/b0/a/b/a;", "x", "Le/a/b0/a/b/a;", "avatarXPresenter", "getTiles", "()[Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileView;", "tiles", "Le/a/d/s/h;", "w", "Le/a/d/s/h;", "binding", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView.class */
public final class VoipContactTileGroupView extends AbstractC11199a implements AbstractC11203e {
    @Inject

    /* renamed from: v */
    public AbstractC11201c f16476v;

    /* renamed from: w */
    public C11792h f16477w;

    /* renamed from: x */
    public C8243a f16478x;

    /* renamed from: y */
    public boolean f16479y = true;

    /* renamed from: z */
    public final LinkedHashMap<Integer, C11245w> f16480z = new LinkedHashMap<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoipContactTileGroupView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        if (isInEditMode()) {
            z it = j.j(0, 7).iterator();
            while (((h) it).hasNext()) {
                m34287g1(it.a());
            }
            mo25050H0();
            return;
        }
        LayoutInflater.from(context).inflate(C4781R.layout.view_voip_contact_tile_group_avatar, this);
        int i = C4781R.C4783id.avatarContainer;
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(i);
        if (constraintLayout != null) {
            i = C4781R.C4783id.groupAvatar;
            Group group = (Group) findViewById(i);
            if (group != null) {
                i = C4781R.C4783id.imageCallStateRing;
                ImageView imageView = (ImageView) findViewById(i);
                if (imageView != null) {
                    i = C4781R.C4783id.imageProfilePicture;
                    AvatarXView avatarXView = (AvatarXView) findViewById(i);
                    if (avatarXView != null) {
                        i = C4781R.C4783id.textContactLabel;
                        GoldShineTextView goldShineTextView = (GoldShineTextView) findViewById(i);
                        if (goldShineTextView != null) {
                            i = C4781R.C4783id.textProfileName;
                            GoldShineTextView goldShineTextView2 = (GoldShineTextView) findViewById(i);
                            if (goldShineTextView2 != null) {
                                i = C4781R.C4783id.textProfilePhone;
                                TextView textView = (TextView) findViewById(i);
                                if (textView != null) {
                                    i = C4781R.C4783id.viewRipple;
                                    HeartbeatRippleView heartbeatRippleView = (HeartbeatRippleView) findViewById(i);
                                    if (heartbeatRippleView != null) {
                                        C11792h c11792h = new C11792h(this, constraintLayout, group, imageView, avatarXView, goldShineTextView, goldShineTextView2, textView, heartbeatRippleView);
                                        l.d(c11792h, "ViewVoipContactTileGroup…ater.from(context), this)");
                                        this.f16477w = c11792h;
                                        this.f16478x = new C8243a(new C19235i0(context));
                                        C11792h c11792h2 = this.f16477w;
                                        if (c11792h2 != null) {
                                            c11792h2.f34662c.setImageDrawable(new C11167a(context));
                                            return;
                                        } else {
                                            l.l("binding");
                                            throw null;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    private final C11245w[] getTiles() {
        Collection<C11245w> values = this.f16480z.values();
        l.d(values, "viewMap.values");
        Object[] array = values.toArray(new C11245w[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (C11245w[]) array;
    }

    private final void setSpamTheme(String str) {
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        GoldShineTextView goldShineTextView = c11792h.f34664e;
        goldShineTextView.setText(str);
        goldShineTextView.setTextColorRes(17170443);
        goldShineTextView.setBackground(C8605o.m28235e(goldShineTextView.getContext(), C4781R.color.tcx_voip_spam_color, 17));
        C19286f.m13684T(goldShineTextView);
        C11792h c11792h2 = this.f16477w;
        if (c11792h2 != null) {
            c11792h2.f34665f.setTextColorRes(C4781R.color.voip_default_profile_name_color);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: C */
    public void mo25052C() {
        for (C11245w c11245w : getTiles()) {
            AbstractC11231p abstractC11231p = (AbstractC11231p) ((C11243u) c11245w.getPresenter$voip_release()).f57683a;
            if (abstractC11231p != null && abstractC11231p.mo24976h()) {
                abstractC11231p.mo24980B();
            }
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: D */
    public void mo25051D(AbstractC11198o abstractC11198o) {
        l.e(abstractC11198o, "voipUserBadgeTheme");
        if (abstractC11198o instanceof C11192l) {
            m34286h1();
        } else if (abstractC11198o instanceof C11191k) {
            String string = getResources().getString(C4781R.string.tcx_voip_spam_reports_score, ((C11191k) abstractC11198o).f33080a);
            l.d(string, "resources.getString(R.st…UserBadgeTheme.spamScore)");
            setSpamTheme(string);
        } else if (abstractC11198o instanceof C11179b) {
            String string2 = getResources().getString(C4781R.string.voip_caller_label_blocked);
            l.d(string2, "resources.getString(R.st…oip_caller_label_blocked)");
            setSpamTheme(string2);
        } else if (abstractC11198o instanceof C11182e) {
            C11792h c11792h = this.f16477w;
            if (c11792h == null) {
                l.l("binding");
                throw null;
            }
            c11792h.f34665f.m35618l();
            C11792h c11792h2 = this.f16477w;
            if (c11792h2 == null) {
                l.l("binding");
                throw null;
            }
            GoldShineTextView goldShineTextView = c11792h2.f34664e;
            goldShineTextView.setText(goldShineTextView.getResources().getString(C4781R.string.tcx_voip_gold));
            goldShineTextView.setTextColorRes(C4781R.color.tcx_voip_gold_text_color);
            goldShineTextView.m35619k();
            C19286f.m13684T(goldShineTextView);
        } else if (abstractC11198o instanceof C11180c) {
            C11792h c11792h3 = this.f16477w;
            if (c11792h3 == null) {
                l.l("binding");
                throw null;
            }
            GoldShineTextView goldShineTextView2 = c11792h3.f34665f;
            int i = C4781R.color.credPrimaryColor;
            goldShineTextView2.setTextColorRes(i);
            C11792h c11792h4 = this.f16477w;
            if (c11792h4 == null) {
                l.l("binding");
                throw null;
            }
            GoldShineTextView goldShineTextView3 = c11792h4.f34664e;
            goldShineTextView3.setText(goldShineTextView3.getResources().getString(C4781R.string.CredPrivilege));
            goldShineTextView3.setTextColorRes(C4781R.color.tcx_textPrimary_dark);
            goldShineTextView3.setBackground(C8605o.m28235e(goldShineTextView3.getContext(), i, 17));
            C19286f.m13684T(goldShineTextView3);
        } else if (abstractC11198o instanceof C11189i) {
            C11792h c11792h5 = this.f16477w;
            if (c11792h5 == null) {
                l.l("binding");
                throw null;
            }
            c11792h5.f34665f.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            C11792h c11792h6 = this.f16477w;
            if (c11792h6 == null) {
                l.l("binding");
                throw null;
            }
            GoldShineTextView goldShineTextView4 = c11792h6.f34664e;
            l.d(goldShineTextView4, "binding.textContactLabel");
            C19286f.m13689O(goldShineTextView4);
        } else if (abstractC11198o instanceof C11190j) {
            C11792h c11792h7 = this.f16477w;
            if (c11792h7 == null) {
                l.l("binding");
                throw null;
            }
            c11792h7.f34665f.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            C11792h c11792h8 = this.f16477w;
            if (c11792h8 == null) {
                l.l("binding");
                throw null;
            }
            GoldShineTextView goldShineTextView5 = c11792h8.f34664e;
            goldShineTextView5.setText(goldShineTextView5.getResources().getString(C4781R.string.tcx_voip_priority));
            goldShineTextView5.setTextColorRes(17170443);
            goldShineTextView5.setBackground(C8605o.m28235e(goldShineTextView5.getContext(), C4781R.color.tcx_voip_priority_color, 17));
            C19286f.m13684T(goldShineTextView5);
        } else if (abstractC11198o instanceof C11193m) {
            m34286h1();
        } else if (!(abstractC11198o instanceof C11181d)) {
        } else {
            C11792h c11792h9 = this.f16477w;
            if (c11792h9 == null) {
                l.l("binding");
                throw null;
            }
            c11792h9.f34665f.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            C11792h c11792h10 = this.f16477w;
            if (c11792h10 == null) {
                l.l("binding");
                throw null;
            }
            GoldShineTextView goldShineTextView6 = c11792h10.f34664e;
            l.d(goldShineTextView6, "binding.textContactLabel");
            C19286f.m13689O(goldShineTextView6);
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: H0 */
    public void mo25050H0() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            l.d(childAt, "getChildAt(i)");
            if ((childAt instanceof Flow) || l.a(childAt.getTag(), "dummy")) {
                arrayList.add(childAt);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeView((View) it.next());
        }
        switch (this.f16480z.size()) {
            case 2:
                m34284j1(C4781R.layout.view_voip_contact_tile_group_state_2);
                m34285i1(C4781R.C4783id.state2Flow1, new int[]{getTiles()[0].getId()});
                m34285i1(C4781R.C4783id.state2Flow2, new int[]{getTiles()[1].getId()});
                Boolean[][] boolArr = C11228m.f33144a;
                m34283k1(C11228m.f33144a[0]);
                return;
            case 3:
                m34284j1(C4781R.layout.view_voip_contact_tile_group_state_3);
                m34285i1(C4781R.C4783id.state3Flow1, new int[]{getTiles()[0].getId(), getTiles()[2].getId()});
                m34285i1(C4781R.C4783id.state3Flow2, new int[]{getTiles()[1].getId()});
                Boolean[][] boolArr2 = C11228m.f33144a;
                m34283k1(C11228m.f33144a[1]);
                return;
            case 4:
                m34284j1(C4781R.layout.view_voip_contact_tile_group_state_4);
                m34285i1(C4781R.C4783id.state4Flow1, new int[]{getTiles()[0].getId(), getTiles()[2].getId()});
                m34285i1(C4781R.C4783id.state4Flow2, new int[]{getTiles()[1].getId(), getTiles()[3].getId()});
                Boolean[][] boolArr3 = C11228m.f33144a;
                m34283k1(C11228m.f33144a[2]);
                return;
            case 5:
                m34284j1(C4781R.layout.view_voip_contact_tile_group_state_5);
                m34285i1(C4781R.C4783id.state5Flow1, new int[]{getTiles()[0].getId(), getTiles()[1].getId()});
                m34285i1(C4781R.C4783id.state5Flow2, new int[]{getTiles()[2].getId(), getTiles()[3].getId(), getTiles()[4].getId()});
                Boolean[][] boolArr4 = C11228m.f33144a;
                m34283k1(C11228m.f33144a[3]);
                return;
            case 6:
                m34284j1(C4781R.layout.view_voip_contact_tile_group_state_6);
                m34285i1(C4781R.C4783id.state6Flow1, new int[]{getTiles()[0].getId(), getTiles()[3].getId()});
                m34285i1(C4781R.C4783id.state6Flow2, new int[]{getTiles()[1].getId(), getTiles()[4].getId()});
                m34285i1(C4781R.C4783id.state6Flow3, new int[]{getTiles()[2].getId(), getTiles()[5].getId()});
                Boolean[][] boolArr5 = C11228m.f33144a;
                m34283k1(C11228m.f33144a[4]);
                return;
            case 7:
                m34284j1(C4781R.layout.view_voip_contact_tile_group_state_7);
                m34285i1(C4781R.C4783id.state7Flow1, new int[]{getTiles()[0].getId(), getTiles()[1].getId()});
                m34285i1(C4781R.C4783id.state7Flow2, new int[]{getTiles()[2].getId(), getTiles()[3].getId(), getTiles()[4].getId()});
                m34285i1(C4781R.C4783id.state7Flow3, new int[]{getTiles()[5].getId(), getTiles()[6].getId()});
                Boolean[][] boolArr6 = C11228m.f33144a;
                m34283k1(C11228m.f33144a[5]);
                return;
            default:
                return;
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: d0 */
    public void mo25049d0(boolean z) {
        boolean z2;
        CharSequence text;
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        Group group = c11792h.f34661b;
        l.d(group, "binding.groupAvatar");
        C19286f.m13683U(group, z);
        C11792h c11792h2 = this.f16477w;
        if (c11792h2 == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c11792h2.f34666g;
        l.d(textView, "binding.textProfilePhone");
        if (z) {
            C11792h c11792h3 = this.f16477w;
            if (c11792h3 == null) {
                l.l("binding");
                throw null;
            }
            TextView textView2 = c11792h3.f34666g;
            l.d(textView2, "binding.textProfilePhone");
            l.d(textView2.getText(), "binding.textProfilePhone.text");
            if (!r.p(text)) {
                z2 = true;
                C19286f.m13683U(textView, z2);
            }
        }
        z2 = false;
        C19286f.m13683U(textView, z2);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: g */
    public void mo25048g(C11593e c11593e) {
        l.e(c11593e, "peer");
        C11245w m34287g1 = m34287g1(c11593e.f33990a);
        if (m34287g1 != null) {
            C11243u c11243u = (C11243u) m34287g1.getPresenter$voip_release();
            c11243u.f33168f = this.f16479y;
            c11243u.m24984Jj(c11243u.f33169g);
            c11243u.m24982Lj();
            l.e(c11593e, "peer");
            if (c11243u.f33166d != null) {
                return;
            }
            c11243u.f33166d = c11593e;
            AbstractC11231p abstractC11231p = (AbstractC11231p) c11243u.f57683a;
            if (abstractC11231p != null) {
                abstractC11231p.mo24978b(false);
                abstractC11231p.mo24975i(false);
            }
            c11243u.f33171i = d.w2(c11243u, (f) null, (j0) null, new C11232q(c11243u, c11593e.f33990a, null), 3, (Object) null);
            d.w2(c11243u, (f) null, (j0) null, new C11241t(c11243u, c11593e, null), 3, (Object) null);
            c11243u.m24982Lj();
        }
    }

    /* renamed from: g1 */
    public final C11245w m34287g1(int i) {
        C11245w c11245w = this.f16480z.get(Integer.valueOf(i));
        if (c11245w != null) {
            return c11245w;
        }
        if (this.f16480z.size() == 7) {
            return null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C11245w c11245w2 = new C11245w(context, null, 0, 6);
        c11245w2.setId(ViewGroup.generateViewId());
        this.f16480z.put(Integer.valueOf(i), c11245w2);
        addView(c11245w2);
        return c11245w2;
    }

    public final AbstractC11201c getPresenter$voip_release() {
        AbstractC11201c abstractC11201c = this.f16476v;
        if (abstractC11201c != null) {
            return abstractC11201c;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: h0 */
    public void mo25047h0(int i) {
        C11245w c11245w = this.f16480z.get(Integer.valueOf(i));
        if (c11245w != null) {
            this.f16480z.remove(Integer.valueOf(i));
            removeView(c11245w);
        }
    }

    /* renamed from: h1 */
    public final void m34286h1() {
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        c11792h.f34665f.setTextColorRes(C4781R.color.voip_default_profile_name_color);
        C11792h c11792h2 = this.f16477w;
        if (c11792h2 == null) {
            l.l("binding");
            throw null;
        }
        GoldShineTextView goldShineTextView = c11792h2.f34664e;
        goldShineTextView.setText(goldShineTextView.getResources().getString(C4781R.string.tcx_voip_verified_business));
        goldShineTextView.setTextColorRes(17170443);
        goldShineTextView.setBackground(C8605o.m28235e(goldShineTextView.getContext(), C4781R.color.tcx_voip_verified_business_color, 17));
        C19286f.m13684T(goldShineTextView);
    }

    /* renamed from: i1 */
    public final void m34285i1(int i, int[] iArr) {
        Flow findViewById = findViewById(i);
        l.d(findViewById, "findViewById<Flow>(flowId)");
        findViewById.setReferencedIds(iArr);
    }

    /* renamed from: j1 */
    public final void m34284j1(int i) {
        LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, true);
        AtomicInteger atomicInteger = C26614s.f74505a;
        setLayoutDirection(getLayoutDirection());
    }

    /* renamed from: k1 */
    public final void m34283k1(Boolean[] boolArr) {
        if (!isInEditMode()) {
            C11245w[] tiles = getTiles();
            int length = tiles.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                ((C11243u) tiles[i].getPresenter$voip_release()).m24984Jj(boolArr[i2].booleanValue());
                i++;
                i2++;
            }
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: n0 */
    public void mo25046n0(boolean z) {
        C8243a c8243a = this.f16478x;
        if (c8243a != null) {
            c8243a.m28738pk(z);
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            C11792h c11792h = this.f16477w;
            if (c11792h == null) {
                l.l("binding");
                throw null;
            }
            AvatarXView avatarXView = c11792h.f34663d;
            C8243a c8243a = this.f16478x;
            if (c8243a == null) {
                l.l("avatarXPresenter");
                throw null;
            }
            avatarXView.setPresenter(c8243a);
            AbstractC11201c abstractC11201c = this.f16476v;
            if (abstractC11201c != null) {
                ((C11206h) abstractC11201c).mo9029Y0(this);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (!isInEditMode()) {
            AbstractC11201c abstractC11201c = this.f16476v;
            if (abstractC11201c != null) {
                ((C11206h) abstractC11201c).mo9806c();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: p */
    public void mo25045p() {
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        HeartbeatRippleView heartbeatRippleView = c11792h.f34667h;
        int i = C4781R.color.voip_background_color;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        AvatarXView avatarXView = c11792h.f34663d;
        l.d(avatarXView, "binding.imageProfilePicture");
        heartbeatRippleView.m35705e(i, avatarXView, false);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: s0 */
    public void mo25044s0() {
        C11792h c11792h = this.f16477w;
        if (c11792h != null) {
            c11792h.f34667h.m35706d();
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    public void setAvatarConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatarConfig");
        C8243a c8243a = this.f16478x;
        if (c8243a != null) {
            C8243a.m28739ok(c8243a, avatarXConfig, false, 2, null);
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    public void setCallOnTile(AbstractC12020a abstractC12020a) {
        AbstractC11230o presenter$voip_release;
        l.e(abstractC12020a, "call");
        C11245w c11245w = this.f16480z.get(Integer.valueOf(abstractC12020a.mo23701d()));
        if (c11245w == null || (presenter$voip_release = c11245w.getPresenter$voip_release()) == null) {
            return;
        }
        C11243u c11243u = (C11243u) presenter$voip_release;
        l.e(abstractC12020a, "call");
        if (c11243u.f33167e != null) {
            return;
        }
        c11243u.f33167e = abstractC12020a;
        p1 p1Var = c11243u.f33171i;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        c11243u.f33171i = null;
        AbstractC11231p abstractC11231p = (AbstractC11231p) c11243u.f57683a;
        if (abstractC11231p != null) {
            abstractC11231p.mo24978b(false);
        }
        d.w2(c11243u, (f) null, (j0) null, new C11239s(c11243u, abstractC12020a, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    public void setModeIncoming(boolean z) {
        this.f16479y = z;
        for (C11245w c11245w : getTiles()) {
            C11243u c11243u = (C11243u) c11245w.getPresenter$voip_release();
            c11243u.f33168f = z;
            c11243u.m24984Jj(c11243u.f33169g);
            c11243u.m24982Lj();
        }
    }

    public final void setPresenter$voip_release(AbstractC11201c abstractC11201c) {
        l.e(abstractC11201c, "<set-?>");
        this.f16476v = abstractC11201c;
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    public void setProfileName(String str) {
        l.e(str, "profileName");
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        GoldShineTextView goldShineTextView = c11792h.f34665f;
        goldShineTextView.setText(str);
        goldShineTextView.setSelected(true);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    public void setProfilePhone(String str) {
        l.e(str, AnalyticsConstants.PHONE);
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c11792h.f34666g;
        l.d(textView, "binding.textProfilePhone");
        textView.setText(str);
        C11792h c11792h2 = this.f16477w;
        if (c11792h2 == null) {
            l.l("binding");
            throw null;
        }
        TextView textView2 = c11792h2.f34666g;
        l.d(textView2, "binding.textProfilePhone");
        C19286f.m13684T(textView2);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    public void setRingState(RingDrawableState ringDrawableState) {
        l.e(ringDrawableState, "state");
        C11792h c11792h = this.f16477w;
        C11167a c11167a = null;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        ImageView imageView = c11792h.f34662c;
        l.d(imageView, "binding.imageCallStateRing");
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof C11167a) {
            c11167a = drawable;
        }
        C11167a c11167a2 = c11167a;
        if (c11167a2 == null) {
            return;
        }
        l.e(ringDrawableState, "state");
        int ordinal = ringDrawableState.ordinal();
        if (ordinal == 0) {
            c11167a2.m25079e(c11167a2.m25082b(C4781R.attr.voip_call_status_neutral_color));
        } else if (ordinal == 1) {
            c11167a2.m25079e(c11167a2.m25082b(C4781R.attr.voip_call_status_warning_color));
            if (c11167a2.f33031i) {
                return;
            }
            c11167a2.f33031i = true;
        } else if (ordinal == 2) {
            c11167a2.m25076h();
        } else if (ordinal != 3) {
        } else {
            c11167a2.m25077g();
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e
    /* renamed from: u0 */
    public void mo25043u0() {
        C11792h c11792h = this.f16477w;
        if (c11792h == null) {
            l.l("binding");
            throw null;
        }
        ImageView imageView = c11792h.f34662c;
        l.d(imageView, "binding.imageCallStateRing");
        C19286f.m13684T(imageView);
    }
}
