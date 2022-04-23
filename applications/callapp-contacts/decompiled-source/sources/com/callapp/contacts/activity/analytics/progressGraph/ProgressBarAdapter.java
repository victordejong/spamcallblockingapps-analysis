package com.callapp.contacts.activity.analytics.progressGraph;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.m.a;
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
import com.explorestack.iab.mraid.h;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n\u0002\b\r\u0018�� +2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001:\u0006)*+,-.B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001c\u0010\u0016\u001a\u00020\u00112\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u001c\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rH\u0016J\u0014\u0010\u001c\u001a\u00020\u00112\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u001dJP\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020 2\u0006\u0010(\u001a\u00020\"H\u0002R*\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006/"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "()V", "items", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "Lkotlin/collections/ArrayList;", "getItems", "()Ljava/util/ArrayList;", "setItems", "(Ljava/util/ArrayList;)V", "getItemCount", "", "getItemViewType", "position", "handleDuration", "", "item", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "binding", "Landroidx/viewbinding/ViewBinding;", "onBindViewHolder", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "replaceItems", "", "setDurationText", "showDay", "", "day", "", "showHour", "hour", "showMin", "min", "showSec", "sec", "BaseViewHolder", "CallDurationViewHolder", "Companion", "FavoritePeopleViewHolder", "NumberOfCallsViewHolder", "ProfilePictureViewHolder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter.class */
public final class ProgressBarAdapter extends RecyclerView.a<BaseViewHolder<?>> {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f10996a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<BaseProgressBarData> f10997b = new ArrayList<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028��H&¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "bind", "", "item", "(Ljava/lang/Object;)V", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder.class */
    public static abstract class BaseViewHolder<T> extends RecyclerView.v {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseViewHolder(View itemView) {
            super(itemView);
            p.d(itemView, "itemView");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "binding", "Lcom/callapp/contacts/databinding/CallDurationItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder.class */
    public final class CallDurationViewHolder extends BaseViewHolder<FavoriteCallersData> {
        final CallDurationItemBinding r;
        final /* synthetic */ ProgressBarAdapter s;

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
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r3
                r1 = r4
                r0.s = r1
                r0 = r5
                android.widget.LinearLayout r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.CallDurationViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.CallDurationItemBinding):void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;", "", "()V", "CALL_DURATION", "", "FAVORITE_PEOPLE", "NUMBER_OF_CALLS", "PROFILE_PIC_GRAPH", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "binding", "Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder.class */
    public final class FavoritePeopleViewHolder extends BaseViewHolder<FavoriteCallersData> {
        final FavoritePeopleListItemBinding r;
        final /* synthetic */ ProgressBarAdapter s;

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
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r3
                r1 = r4
                r0.s = r1
                r0 = r5
                androidx.constraintlayout.widget.ConstraintLayout r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.FavoritePeopleViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.FavoritePeopleListItemBinding):void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;", "binding", "Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder.class */
    public final class NumberOfCallsViewHolder extends BaseViewHolder<NumberOfCallsProgressBarData> {
        final NumberOfCallsItemBinding r;
        final /* synthetic */ ProgressBarAdapter s;

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
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r3
                r1 = r4
                r0.s = r1
                r0 = r5
                android.widget.RelativeLayout r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.NumberOfCallsViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.NumberOfCallsItemBinding):void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;", "binding", "Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;)V", "bind", "", "item", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder.class */
    public final class ProfilePictureViewHolder extends BaseViewHolder<ProfilePictureProgressBarData> {
        final CallDurationGraphItemBinding r;
        final /* synthetic */ ProgressBarAdapter s;

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
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r3
                r1 = r4
                r0.s = r1
                r0 = r5
                com.callapp.contacts.activity.analytics.graph.CallAllRoundedCornerProgressBar r0 = r0.getRoot()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.root"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r3
                r1 = r4
                android.view.View r1 = (android.view.View) r1
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.r = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter.ProfilePictureViewHolder.<init>(com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter, com.callapp.contacts.databinding.CallDurationGraphItemBinding):void");
        }
    }

    private static void a(a aVar, boolean z, long j, boolean z2, long j2, boolean z3, long j3, boolean z4, long j4) {
        int i = 0;
        int i2 = 0;
        if (aVar instanceof CallDurationItemBinding) {
            CallDurationItemBinding callDurationItemBinding = (CallDurationItemBinding) aVar;
            TextView textView = callDurationItemBinding.f14285c;
            p.b(textView, "binding.durationDay");
            textView.setText("d");
            callDurationItemBinding.f14285c.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView2 = callDurationItemBinding.f14286d;
            p.b(textView2, "binding.durationDayTime");
            textView2.setText(String.valueOf(j));
            callDurationItemBinding.f14286d.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView3 = callDurationItemBinding.e;
            p.b(textView3, "binding.durationHour");
            textView3.setText(h.f19142a);
            callDurationItemBinding.e.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView4 = callDurationItemBinding.f;
            p.b(textView4, "binding.durationHourTime");
            textView4.setText(String.valueOf(j2));
            callDurationItemBinding.f.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView5 = callDurationItemBinding.g;
            p.b(textView5, "binding.durationMin");
            textView5.setText("m");
            callDurationItemBinding.g.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView6 = callDurationItemBinding.h;
            p.b(textView6, "binding.durationMinTime");
            textView6.setText(String.valueOf(j3));
            callDurationItemBinding.h.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView7 = callDurationItemBinding.i;
            p.b(textView7, "binding.durationSec");
            textView7.setText("s");
            callDurationItemBinding.i.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView8 = callDurationItemBinding.j;
            p.b(textView8, "binding.durationSecTime");
            textView8.setText(String.valueOf(j4));
            callDurationItemBinding.j.setTextColor(ThemeUtils.getColor(2131100140));
            int i3 = z4 ? 0 : 8;
            TextView textView9 = callDurationItemBinding.i;
            p.b(textView9, "binding.durationSec");
            textView9.setVisibility(i3);
            TextView textView10 = callDurationItemBinding.j;
            p.b(textView10, "binding.durationSecTime");
            textView10.setVisibility(i3);
            int i4 = z2 ? 0 : 8;
            TextView textView11 = callDurationItemBinding.e;
            p.b(textView11, "binding.durationHour");
            textView11.setVisibility(i4);
            TextView textView12 = callDurationItemBinding.f;
            p.b(textView12, "binding.durationHourTime");
            textView12.setVisibility(i4);
            int i5 = z3 ? 0 : 8;
            TextView textView13 = callDurationItemBinding.h;
            p.b(textView13, "binding.durationMinTime");
            textView13.setVisibility(i5);
            TextView textView14 = callDurationItemBinding.g;
            p.b(textView14, "binding.durationMin");
            textView14.setVisibility(i5);
            if (!z) {
                i2 = 8;
            }
            TextView textView15 = callDurationItemBinding.f14286d;
            p.b(textView15, "binding.durationDayTime");
            textView15.setVisibility(i2);
            TextView textView16 = callDurationItemBinding.f14285c;
            p.b(textView16, "binding.durationDay");
            textView16.setVisibility(i2);
        } else if (aVar instanceof FavoritePeopleListItemBinding) {
            FavoritePeopleListItemBinding favoritePeopleListItemBinding = (FavoritePeopleListItemBinding) aVar;
            TextView textView17 = favoritePeopleListItemBinding.f14312b;
            p.b(textView17, "binding.durationDay");
            textView17.setText("d");
            favoritePeopleListItemBinding.f14312b.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView18 = favoritePeopleListItemBinding.f14313c;
            p.b(textView18, "binding.durationDayTime");
            textView18.setText(String.valueOf(j));
            favoritePeopleListItemBinding.f14313c.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView19 = favoritePeopleListItemBinding.f14314d;
            p.b(textView19, "binding.durationHour");
            textView19.setText(h.f19142a);
            favoritePeopleListItemBinding.f14314d.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView20 = favoritePeopleListItemBinding.e;
            p.b(textView20, "binding.durationHourTime");
            textView20.setText(String.valueOf(j2));
            favoritePeopleListItemBinding.e.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView21 = favoritePeopleListItemBinding.f;
            p.b(textView21, "binding.durationMin");
            textView21.setText("m");
            favoritePeopleListItemBinding.f.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView22 = favoritePeopleListItemBinding.g;
            p.b(textView22, "binding.durationMinTime");
            textView22.setText(String.valueOf(j3));
            favoritePeopleListItemBinding.g.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView23 = favoritePeopleListItemBinding.h;
            p.b(textView23, "binding.durationSec");
            textView23.setText("s");
            favoritePeopleListItemBinding.h.setTextColor(ThemeUtils.getColor(2131100108));
            TextView textView24 = favoritePeopleListItemBinding.i;
            p.b(textView24, "binding.durationSecTime");
            textView24.setText(String.valueOf(j4));
            favoritePeopleListItemBinding.i.setTextColor(ThemeUtils.getColor(2131100140));
            int i6 = z4 ? 0 : 8;
            TextView textView25 = favoritePeopleListItemBinding.h;
            p.b(textView25, "binding.durationSec");
            textView25.setVisibility(i6);
            TextView textView26 = favoritePeopleListItemBinding.i;
            p.b(textView26, "binding.durationSecTime");
            textView26.setVisibility(i6);
            int i7 = z2 ? 0 : 8;
            TextView textView27 = favoritePeopleListItemBinding.f14314d;
            p.b(textView27, "binding.durationHour");
            textView27.setVisibility(i7);
            TextView textView28 = favoritePeopleListItemBinding.e;
            p.b(textView28, "binding.durationHourTime");
            textView28.setVisibility(i7);
            int i8 = z3 ? 0 : 8;
            TextView textView29 = favoritePeopleListItemBinding.g;
            p.b(textView29, "binding.durationMinTime");
            textView29.setVisibility(i8);
            TextView textView30 = favoritePeopleListItemBinding.f;
            p.b(textView30, "binding.durationMin");
            textView30.setVisibility(i8);
            if (!z) {
                i = 8;
            }
            TextView textView31 = favoritePeopleListItemBinding.f14313c;
            p.b(textView31, "binding.durationDayTime");
            textView31.setVisibility(i);
            TextView textView32 = favoritePeopleListItemBinding.f14312b;
            p.b(textView32, "binding.durationDay");
            textView32.setVisibility(i);
        }
    }

    private static void a(FavoriteCallersData favoriteCallersData, a aVar) {
        long j;
        Integer callTimeDuration = favoriteCallersData.getCallTimeDuration();
        int i = 0;
        long intValue = (callTimeDuration != null ? callTimeDuration.intValue() / 60 : 0) % 60;
        Integer callTimeDuration2 = favoriteCallersData.getCallTimeDuration();
        long intValue2 = (callTimeDuration2 != null ? callTimeDuration2.intValue() / 1 : 0) % 60;
        Integer callTimeDuration3 = favoriteCallersData.getCallTimeDuration();
        if (callTimeDuration3 != null) {
            i = callTimeDuration3.intValue() / 3600;
        }
        long j2 = i;
        if (j2 > 99) {
            j = j2 / 24;
            j2 %= 24;
        } else {
            j = 0;
        }
        if (j2 == 0 && intValue == 0 && intValue2 == 0) {
            a(aVar, false, 0L, false, 0L, true, 0L, true, 0L);
        } else if (j >= 1) {
            a(aVar, true, j, true, j2, false, intValue, false, intValue2);
        } else if (j2 >= 1) {
            a(aVar, false, j, true, j2, true, intValue, false, intValue2);
        } else if (intValue >= 1) {
            a(aVar, false, j, false, j2, true, intValue, true, intValue2);
        } else {
            a(aVar, false, j, false, j2, false, intValue, true, intValue2);
        }
    }

    public final void a(List<? extends BaseProgressBarData> items) {
        p.d(items, "items");
        this.f10997b.clear();
        this.f10997b.addAll(items);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f10997b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemViewType(int i) {
        return this.f10997b.get(i).getType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x057d, code lost:
        if (r0 == null) goto L_0x0580;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0680, code lost:
        if (r0 == null) goto L_0x0683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0084, code lost:
        if (r0 == null) goto L_0x0087;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.a
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

    /* JADX WARN: Type inference failed for: r0v3, types: [com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter$BaseViewHolder<?>, androidx.recyclerview.widget.RecyclerView$v] */
    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ BaseViewHolder<?> onCreateViewHolder(ViewGroup parent, int i) {
        NumberOfCallsViewHolder numberOfCallsViewHolder;
        p.d(parent, "parent");
        if (i == 0) {
            NumberOfCallsItemBinding a2 = NumberOfCallsItemBinding.a(LayoutInflater.from(parent.getContext()), parent);
            p.b(a2, "NumberOfCallsItemBinding….context), parent, false)");
            numberOfCallsViewHolder = new NumberOfCallsViewHolder(this, a2);
        } else if (i == 1) {
            FavoritePeopleListItemBinding a3 = FavoritePeopleListItemBinding.a(LayoutInflater.from(parent.getContext()), parent);
            p.b(a3, "FavoritePeopleListItemBi….context), parent, false)");
            numberOfCallsViewHolder = new FavoritePeopleViewHolder(this, a3);
        } else if (i == 2) {
            CallDurationGraphItemBinding a4 = CallDurationGraphItemBinding.a(LayoutInflater.from(parent.getContext()), parent);
            p.b(a4, "CallDurationGraphItemBin….context), parent, false)");
            numberOfCallsViewHolder = new ProfilePictureViewHolder(this, a4);
        } else if (i == 3) {
            CallDurationItemBinding a5 = CallDurationItemBinding.a(LayoutInflater.from(parent.getContext()), parent);
            p.b(a5, "CallDurationItemBinding.….context), parent, false)");
            numberOfCallsViewHolder = new CallDurationViewHolder(this, a5);
        } else {
            throw new IllegalArgumentException("Invalid view type");
        }
        return (RecyclerView.v) numberOfCallsViewHolder;
    }
}
