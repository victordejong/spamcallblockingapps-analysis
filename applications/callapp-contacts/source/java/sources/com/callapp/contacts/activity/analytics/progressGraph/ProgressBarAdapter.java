package com.callapp.contacts.activity.analytics.progressGraph;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.progressGraph.data.BaseProgressBarData;
import com.callapp.contacts.activity.analytics.progressGraph.data.FavoriteCallersData;
import com.callapp.contacts.activity.analytics.progressGraph.data.NumberOfCallsProgressBarData;
import com.callapp.contacts.activity.analytics.progressGraph.data.ProfilePictureProgressBarData;
import com.callapp.contacts.databinding.CallDurationGraphItemBinding;
import com.callapp.contacts.databinding.CallDurationItemBinding;
import com.callapp.contacts.databinding.FavoritePeopleListItemBinding;
import com.callapp.contacts.databinding.NumberOfCallsItemBinding;
import com.callapp.contacts.util.ThemeUtils;
import com.explorestack.iab.mraid.C9568h;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n\u0002\b\r\u0018�� +2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001:\u0006)*+,-.B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001c\u0010\u0016\u001a\u00020\u00112\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u001c\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rH\u0016J\u0014\u0010\u001c\u001a\u00020\u00112\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u001dJP\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020 2\u0006\u0010(\u001a\u00020\"H\u0002R*\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006/"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "()V", "items", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "Lkotlin/collections/ArrayList;", "getItems", "()Ljava/util/ArrayList;", "setItems", "(Ljava/util/ArrayList;)V", "getItemCount", "", "getItemViewType", "position", "handleDuration", "", "item", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "binding", "Landroidx/viewbinding/ViewBinding;", "onBindViewHolder", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "replaceItems", "", "setDurationText", "showDay", "", "day", "", "showHour", "hour", "showMin", "min", "showSec", "sec", "BaseViewHolder", "CallDurationViewHolder", "Companion", "FavoritePeopleViewHolder", "NumberOfCallsViewHolder", "ProfilePictureViewHolder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter.class */
public final class ProgressBarAdapter extends RecyclerView.AbstractC2626a<BaseViewHolder<?>> {

    /* renamed from: a */
    public static final Companion f20142a = new Companion(null);

    /* renamed from: b */
    private ArrayList<BaseProgressBarData> f20143b = new ArrayList<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028��H&¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "bind", "", "item", "(Ljava/lang/Object;)V", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder.class */
    public static abstract class BaseViewHolder<T> extends RecyclerView.AbstractC2657v {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseViewHolder(View itemView) {
            super(itemView);
            C18524p.m3840d(itemView, "itemView");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "binding", "Lcom/callapp/contacts/databinding/CallDurationItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder.class */
    public final class CallDurationViewHolder extends BaseViewHolder<FavoriteCallersData> {

        /* renamed from: r */
        final CallDurationItemBinding f20144r;

        /* renamed from: s */
        final /* synthetic */ ProgressBarAdapter f20145s;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public CallDurationViewHolder(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter r4, com.callapp.contacts.databinding.CallDurationItemBinding r5) {
            /*
                r3 = this;
                r0 = r5
                java.lang.String r1 = "binding"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r3
                r1 = r4
                r0.f20145s = r1
                r0 = r5
                android.widget.LinearLayout r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.f20144r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.CallDurationViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.CallDurationItemBinding):void");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;", "", "()V", "CALL_DURATION", "", "FAVORITE_PEOPLE", "NUMBER_OF_CALLS", "PROFILE_PIC_GRAPH", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "binding", "Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder.class */
    public final class FavoritePeopleViewHolder extends BaseViewHolder<FavoriteCallersData> {

        /* renamed from: r */
        final FavoritePeopleListItemBinding f20146r;

        /* renamed from: s */
        final /* synthetic */ ProgressBarAdapter f20147s;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public FavoritePeopleViewHolder(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter r4, com.callapp.contacts.databinding.FavoritePeopleListItemBinding r5) {
            /*
                r3 = this;
                r0 = r5
                java.lang.String r1 = "binding"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r3
                r1 = r4
                r0.f20147s = r1
                r0 = r5
                androidx.constraintlayout.widget.ConstraintLayout r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.f20146r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.FavoritePeopleViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.FavoritePeopleListItemBinding):void");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;", "binding", "Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder.class */
    public final class NumberOfCallsViewHolder extends BaseViewHolder<NumberOfCallsProgressBarData> {

        /* renamed from: r */
        final NumberOfCallsItemBinding f20148r;

        /* renamed from: s */
        final /* synthetic */ ProgressBarAdapter f20149s;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public NumberOfCallsViewHolder(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter r4, com.callapp.contacts.databinding.NumberOfCallsItemBinding r5) {
            /*
                r3 = this;
                r0 = r5
                java.lang.String r1 = "binding"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r3
                r1 = r4
                r0.f20149s = r1
                r0 = r5
                android.widget.RelativeLayout r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.f20148r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.NumberOfCallsViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.NumberOfCallsItemBinding):void");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;", "binding", "Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder.class */
    public final class ProfilePictureViewHolder extends BaseViewHolder<ProfilePictureProgressBarData> {

        /* renamed from: r */
        final CallDurationGraphItemBinding f20150r;

        /* renamed from: s */
        final /* synthetic */ ProgressBarAdapter f20151s;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ProfilePictureViewHolder(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter r4, com.callapp.contacts.databinding.CallDurationGraphItemBinding r5) {
            /*
                r3 = this;
                r0 = r5
                java.lang.String r1 = "binding"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r3
                r1 = r4
                r0.f20151s = r1
                r0 = r5
                com.callapp.contacts.activity.analytics.graph.CallAllRoundedCornerProgressBar r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.f20150r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.ProfilePictureViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.CallDurationGraphItemBinding):void");
        }
    }

    /* renamed from: a */
    private static void m31530a(AbstractC1286a abstractC1286a, boolean z, long j, boolean z2, long j2, boolean z3, long j3, boolean z4, long j4) {
        if (abstractC1286a instanceof CallDurationItemBinding) {
            CallDurationItemBinding callDurationItemBinding = (CallDurationItemBinding) abstractC1286a;
            TextView textView = callDurationItemBinding.f24963c;
            C18524p.m3843b(textView, "binding.durationDay");
            textView.setText("d");
            callDurationItemBinding.f24963c.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView2 = callDurationItemBinding.f24964d;
            C18524p.m3843b(textView2, "binding.durationDayTime");
            textView2.setText(String.valueOf(j));
            callDurationItemBinding.f24964d.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView3 = callDurationItemBinding.f24965e;
            C18524p.m3843b(textView3, "binding.durationHour");
            textView3.setText(C9568h.f32519a);
            callDurationItemBinding.f24965e.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView4 = callDurationItemBinding.f24966f;
            C18524p.m3843b(textView4, "binding.durationHourTime");
            textView4.setText(String.valueOf(j2));
            callDurationItemBinding.f24966f.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView5 = callDurationItemBinding.f24967g;
            C18524p.m3843b(textView5, "binding.durationMin");
            textView5.setText("m");
            callDurationItemBinding.f24967g.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView6 = callDurationItemBinding.f24968h;
            C18524p.m3843b(textView6, "binding.durationMinTime");
            textView6.setText(String.valueOf(j3));
            callDurationItemBinding.f24968h.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView7 = callDurationItemBinding.f24969i;
            C18524p.m3843b(textView7, "binding.durationSec");
            textView7.setText("s");
            callDurationItemBinding.f24969i.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView8 = callDurationItemBinding.f24970j;
            C18524p.m3843b(textView8, "binding.durationSecTime");
            textView8.setText(String.valueOf(j4));
            callDurationItemBinding.f24970j.setTextColor(ThemeUtils.getColor(2131100140));
            int i = z4 ? 0 : 8;
            TextView textView9 = callDurationItemBinding.f24969i;
            C18524p.m3843b(textView9, "binding.durationSec");
            textView9.setVisibility(i);
            TextView textView10 = callDurationItemBinding.f24970j;
            C18524p.m3843b(textView10, "binding.durationSecTime");
            textView10.setVisibility(i);
            int i2 = z2 ? 0 : 8;
            TextView textView11 = callDurationItemBinding.f24965e;
            C18524p.m3843b(textView11, "binding.durationHour");
            textView11.setVisibility(i2);
            TextView textView12 = callDurationItemBinding.f24966f;
            C18524p.m3843b(textView12, "binding.durationHourTime");
            textView12.setVisibility(i2);
            int i3 = z3 ? 0 : 8;
            TextView textView13 = callDurationItemBinding.f24968h;
            C18524p.m3843b(textView13, "binding.durationMinTime");
            textView13.setVisibility(i3);
            TextView textView14 = callDurationItemBinding.f24967g;
            C18524p.m3843b(textView14, "binding.durationMin");
            textView14.setVisibility(i3);
            int i4 = z ? 0 : 8;
            TextView textView15 = callDurationItemBinding.f24964d;
            C18524p.m3843b(textView15, "binding.durationDayTime");
            textView15.setVisibility(i4);
            TextView textView16 = callDurationItemBinding.f24963c;
            C18524p.m3843b(textView16, "binding.durationDay");
            textView16.setVisibility(i4);
        } else if (!(abstractC1286a instanceof FavoritePeopleListItemBinding)) {
        } else {
            FavoritePeopleListItemBinding favoritePeopleListItemBinding = (FavoritePeopleListItemBinding) abstractC1286a;
            TextView textView17 = favoritePeopleListItemBinding.f25026b;
            C18524p.m3843b(textView17, "binding.durationDay");
            textView17.setText("d");
            favoritePeopleListItemBinding.f25026b.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView18 = favoritePeopleListItemBinding.f25027c;
            C18524p.m3843b(textView18, "binding.durationDayTime");
            textView18.setText(String.valueOf(j));
            favoritePeopleListItemBinding.f25027c.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView19 = favoritePeopleListItemBinding.f25028d;
            C18524p.m3843b(textView19, "binding.durationHour");
            textView19.setText(C9568h.f32519a);
            favoritePeopleListItemBinding.f25028d.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView20 = favoritePeopleListItemBinding.f25029e;
            C18524p.m3843b(textView20, "binding.durationHourTime");
            textView20.setText(String.valueOf(j2));
            favoritePeopleListItemBinding.f25029e.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView21 = favoritePeopleListItemBinding.f25030f;
            C18524p.m3843b(textView21, "binding.durationMin");
            textView21.setText("m");
            favoritePeopleListItemBinding.f25030f.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView22 = favoritePeopleListItemBinding.f25031g;
            C18524p.m3843b(textView22, "binding.durationMinTime");
            textView22.setText(String.valueOf(j3));
            favoritePeopleListItemBinding.f25031g.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView23 = favoritePeopleListItemBinding.f25032h;
            C18524p.m3843b(textView23, "binding.durationSec");
            textView23.setText("s");
            favoritePeopleListItemBinding.f25032h.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView24 = favoritePeopleListItemBinding.f25033i;
            C18524p.m3843b(textView24, "binding.durationSecTime");
            textView24.setText(String.valueOf(j4));
            favoritePeopleListItemBinding.f25033i.setTextColor(ThemeUtils.getColor(2131100140));
            int i5 = z4 ? 0 : 8;
            TextView textView25 = favoritePeopleListItemBinding.f25032h;
            C18524p.m3843b(textView25, "binding.durationSec");
            textView25.setVisibility(i5);
            TextView textView26 = favoritePeopleListItemBinding.f25033i;
            C18524p.m3843b(textView26, "binding.durationSecTime");
            textView26.setVisibility(i5);
            int i6 = z2 ? 0 : 8;
            TextView textView27 = favoritePeopleListItemBinding.f25028d;
            C18524p.m3843b(textView27, "binding.durationHour");
            textView27.setVisibility(i6);
            TextView textView28 = favoritePeopleListItemBinding.f25029e;
            C18524p.m3843b(textView28, "binding.durationHourTime");
            textView28.setVisibility(i6);
            int i7 = z3 ? 0 : 8;
            TextView textView29 = favoritePeopleListItemBinding.f25031g;
            C18524p.m3843b(textView29, "binding.durationMinTime");
            textView29.setVisibility(i7);
            TextView textView30 = favoritePeopleListItemBinding.f25030f;
            C18524p.m3843b(textView30, "binding.durationMin");
            textView30.setVisibility(i7);
            int i8 = z ? 0 : 8;
            TextView textView31 = favoritePeopleListItemBinding.f25027c;
            C18524p.m3843b(textView31, "binding.durationDayTime");
            textView31.setVisibility(i8);
            TextView textView32 = favoritePeopleListItemBinding.f25026b;
            C18524p.m3843b(textView32, "binding.durationDay");
            textView32.setVisibility(i8);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: a */
    private static void m31529a(FavoriteCallersData favoriteCallersData, AbstractC1286a abstractC1286a) {
        char c;
        Integer callTimeDuration = favoriteCallersData.getCallTimeDuration();
        long intValue = (callTimeDuration != null ? callTimeDuration.intValue() / 60 : 0) % 60;
        Integer callTimeDuration2 = favoriteCallersData.getCallTimeDuration();
        long intValue2 = (callTimeDuration2 != null ? callTimeDuration2.intValue() / 1 : 0) % 60;
        Integer callTimeDuration3 = favoriteCallersData.getCallTimeDuration();
        int i = 0;
        if (callTimeDuration3 != null) {
            i = callTimeDuration3.intValue() / 3600;
        }
        char c2 = i;
        if (c2 > 99) {
            c = c2 / 24;
            c2 %= 24;
        } else {
            c = 0;
        }
        if (c2 == 0 && intValue == 0 && intValue2 == 0) {
            m31530a(abstractC1286a, false, 0L, false, 0L, true, 0L, true, 0L);
        } else if (c >= 1) {
            m31530a(abstractC1286a, true, c, true, c2, false, intValue, false, intValue2);
        } else if (c2 >= 1) {
            m31530a(abstractC1286a, false, c, true, c2, true, intValue, false, intValue2);
        } else if (intValue >= 1) {
            m31530a(abstractC1286a, false, c, false, c2, true, intValue, true, intValue2);
        } else {
            m31530a(abstractC1286a, false, c, false, c2, false, intValue, true, intValue2);
        }
    }

    /* renamed from: a */
    public final void m31528a(List<? extends BaseProgressBarData> items) {
        C18524p.m3840d(items, "items");
        this.f20143b.clear();
        this.f20143b.addAll(items);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f20143b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemViewType(int i) {
        return this.f20143b.get(i).getType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x057d, code lost:
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0680, code lost:
        if (r0 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0084, code lost:
        if (r0 == null) goto L8;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void onBindViewHolder(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.BaseViewHolder<?> r7, int r8) {
        /*
            Method dump skipped, instructions count: 2069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$v, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ BaseViewHolder<?> onCreateViewHolder(ViewGroup parent, int i) {
        RecyclerView.AbstractC2657v abstractC2657v;
        C18524p.m3840d(parent, "parent");
        if (i == 0) {
            NumberOfCallsItemBinding m29057a = NumberOfCallsItemBinding.m29057a(LayoutInflater.from(parent.getContext()), parent);
            C18524p.m3843b(m29057a, "NumberOfCallsItemBinding….context), parent, false)");
            abstractC2657v = (BaseViewHolder) new NumberOfCallsViewHolder(this, m29057a);
        } else if (i == 1) {
            FavoritePeopleListItemBinding m29065a = FavoritePeopleListItemBinding.m29065a(LayoutInflater.from(parent.getContext()), parent);
            C18524p.m3843b(m29065a, "FavoritePeopleListItemBi….context), parent, false)");
            abstractC2657v = (BaseViewHolder) new FavoritePeopleViewHolder(this, m29065a);
        } else if (i == 2) {
            CallDurationGraphItemBinding m29075a = CallDurationGraphItemBinding.m29075a(LayoutInflater.from(parent.getContext()), parent);
            C18524p.m3843b(m29075a, "CallDurationGraphItemBin….context), parent, false)");
            abstractC2657v = (BaseViewHolder) new ProfilePictureViewHolder(this, m29075a);
        } else if (i != 3) {
            throw new IllegalArgumentException("Invalid view type");
        } else {
            CallDurationItemBinding m29073a = CallDurationItemBinding.m29073a(LayoutInflater.from(parent.getContext()), parent);
            C18524p.m3843b(m29073a, "CallDurationItemBinding.….context), parent, false)");
            abstractC2657v = (BaseViewHolder) new CallDurationViewHolder(this, m29073a);
        }
        return abstractC2657v;
    }
}
