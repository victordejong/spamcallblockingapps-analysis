package com.truecaller.service;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.C2752R;
import com.truecaller.acs.p131ui.popup.AfterCallPopupActivity;
import com.truecaller.blocking.ActionSource;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import p1727n3.p1807k.p1818g.C26536a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1457n.EnumC22259b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22544i;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8602m;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p804h.p836t0.AbstractC14738b;
import w3.c.a.a.a.h;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/WidgetListService.class */
public class WidgetListService extends RemoteViewsService {

    /* renamed from: com.truecaller.service.WidgetListService$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/WidgetListService$a.class */
    public static class C4471a implements RemoteViewsService.RemoteViewsFactory {

        /* renamed from: a */
        public final Context f14769a;

        /* renamed from: b */
        public final int f14770b;

        /* renamed from: c */
        public AbstractC17373b f14771c;

        /* renamed from: d */
        public final AppWidgetManager f14772d;

        /* renamed from: e */
        public final C26536a f14773e = C26536a.m1710c();

        /* renamed from: f */
        public final AbstractC11705f f14774f;

        /* renamed from: g */
        public final AbstractC14738b f14775g;

        /* renamed from: h */
        public final int f14776h;

        /* renamed from: i */
        public final int f14777i;

        /* renamed from: j */
        public final AbstractC19854f<AbstractC17348c> f14778j;

        public C4471a(Context context, Intent intent) {
            this.f14769a = context;
            this.f14770b = intent.getIntExtra("appWidgetId", 0);
            this.f14772d = AppWidgetManager.getInstance(context);
            this.f14776h = intent.getIntExtra("extra_widget_layout", C2752R.layout.widget_list_body);
            this.f14777i = intent.getIntExtra("extra_list_item_layout", C2752R.layout.widget_list_row);
            AbstractC21187w1 abstractC21187w1 = (AbstractC21187w1) context.getApplicationContext();
            this.f14778j = abstractC21187w1.mo10154s().mo12471Z0();
            this.f14774f = abstractC21187w1.mo10154s().mo11631z();
            this.f14775g = abstractC21187w1.mo10154s().mo12775C5();
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public int getCount() {
            synchronized (this) {
                AbstractC17373b abstractC17373b = this.f14771c;
                if (abstractC17373b == null) {
                    return 0;
                }
                return Math.min(abstractC17373b.getCount(), 20);
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public long getItemId(int i) {
            synchronized (this) {
                AbstractC17373b abstractC17373b = this.f14771c;
                if (abstractC17373b == null || !abstractC17373b.moveToPosition(i)) {
                    return 0L;
                }
                return this.f14771c.getId();
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public RemoteViews getLoadingView() {
            RemoteViews remoteViews = new RemoteViews(this.f14769a.getPackageName(), (int) C2752R.layout.widget_loading);
            remoteViews.setTextViewText(C2752R.C2754id.loading_text, this.f14769a.getText(2131888515));
            return remoteViews;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public RemoteViews getViewAt(int i) {
            int i2;
            String str;
            String str2;
            Bitmap bitmap;
            int i3;
            Uri m22592B;
            Resources resources;
            RemoteViews remoteViews = new RemoteViews(this.f14769a.getPackageName(), this.f14777i);
            synchronized (this) {
                AbstractC17373b abstractC17373b = this.f14771c;
                if (abstractC17373b != null && abstractC17373b.moveToPosition(i)) {
                    HistoryEvent mo16159n = this.f14771c.mo16159n();
                    if (mo16159n == null || !C8574c0.m28352g(mo16159n.f11535b)) {
                        remoteViews.setViewVisibility(C2752R.C2754id.widgetRowContainer, 8);
                        return remoteViews;
                    }
                    remoteViews.setViewVisibility(C2752R.C2754id.widgetRowContainer, 0);
                    Contact contact = mo16159n.f11539f;
                    if (this.f14772d.getAppWidgetOptions(this.f14770b).getInt("widgetSizeKey") == 0) {
                        remoteViews.setViewVisibility(C2752R.C2754id.rowPicture, 0);
                        if (contact != null && (m22592B = C12864a2.m22592B(contact, true)) != null && (resources = this.f14769a.getResources()) != null) {
                            try {
                                C21852d<Bitmap> mo8415f = C17891a1.C17902k.m15664K1(this.f14769a).mo8415f();
                                mo8415f.f61767J = m22592B;
                                mo8415f.f61771N = true;
                                C21852d<Bitmap> mo8102f = mo8415f.m8971m0(resources.getDimensionPixelSize(C2752R.dimen.widget_avatar)).mo8102f();
                                EnumC22259b enumC22259b = EnumC22259b.PREFER_RGB_565;
                                Objects.requireNonNull(mo8102f);
                                bitmap = (Bitmap) ((C22234h) C17891a1.C17902k.m15597l((C21852d) mo8102f.mo8083y(C22512n.f62386f, enumC22259b).mo8083y(C22544i.f62467a, enumC22259b), m22592B)).m8418X().get();
                            } catch (Exception e) {
                            }
                            i3 = mo16159n.f11551r;
                            if (i3 != 1 || i3 == 3) {
                                remoteViews.setImageViewResource(C2752R.C2754id.rowPicture, C2752R.C2753drawable.t_ic_blocked_avatar);
                            } else if (WidgetListService.m34741a(mo16159n)) {
                                remoteViews.setImageViewResource(C2752R.C2754id.rowPicture, C2752R.C2753drawable.ic_block_avatar_profile);
                            } else if (bitmap != null) {
                                remoteViews.setImageViewBitmap(C2752R.C2754id.rowPicture, bitmap);
                            } else {
                                remoteViews.setImageViewResource(C2752R.C2754id.rowPicture, C2752R.C2753drawable.ic_avatar);
                            }
                        }
                        bitmap = null;
                        i3 = mo16159n.f11551r;
                        if (i3 != 1) {
                        }
                        remoteViews.setImageViewResource(C2752R.C2754id.rowPicture, C2752R.C2753drawable.t_ic_blocked_avatar);
                    } else {
                        remoteViews.setViewVisibility(C2752R.C2754id.rowPicture, 8);
                        remoteViews.setImageViewBitmap(C2752R.C2754id.rowPicture, null);
                    }
                    int i4 = mo16159n.f11551r;
                    if (i4 == 1) {
                        i2 = 2131236878;
                    } else if (i4 == 3) {
                        i2 = 2131236882;
                    } else {
                        int i5 = mo16159n.f11550q;
                        i2 = i5 != 1 ? i5 != 2 ? i5 != 3 ? 2131236880 : 2131236881 : 2131236883 : 2131236879;
                    }
                    remoteViews.setImageViewResource(C2752R.C2754id.rowType, i2);
                    Context context = this.f14769a;
                    int i6 = mo16159n.f11551r;
                    remoteViews.setTextViewText(C2752R.C2754id.rowTitle, (contact == null || contact.m35570C0()) ? i6 == 1 ? context.getString(C2752R.string.WidgetCallBlocked) : i6 == 3 ? context.getString(C2752R.string.OSNotificationTitleMuted) : WidgetListService.m34741a(mo16159n) ? context.getString(C2752R.string.WidgetCallIdentifiedAsSpam) : (contact == null || (contact.m35497s0() && !contact.m35488x0())) ? context.getString(2131886802) : C8572b0.m28378a((String) h.c(mo16159n.f11536c, mo16159n.f11535b), C8604n.m28242c(context)) : contact.m35491w());
                    Context context2 = this.f14769a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.f14773e.m1707f(C8572b0.m28378a((String) h.c(mo16159n.f11536c, mo16159n.f11535b), C8604n.m28242c(context2))));
                    if ((!this.f14774f.isEnabled() || (str2 = mo16159n.f11552s) == null) ? false : str2.equals("com.truecaller.voip.manager.VOIP")) {
                        sb.replace(0, sb.length(), context2.getString(2131890378));
                    }
                    if ((!this.f14775g.isEnabled() || (str = mo16159n.f11552s) == null) ? false : str.equals(SupportMessenger.WHATSAPP)) {
                        sb.replace(0, sb.length(), context2.getString(C2752R.string.ConversationHistoryItemWhatsApp));
                    }
                    sb.append(", ");
                    sb.append(C8602m.m28249i(context2, mo16159n.f11541h, true));
                    long j = mo16159n.f11542i;
                    if (j > 0) {
                        sb.append(" (");
                        sb.append(C8602m.m28253e(context2, j));
                        sb.append(")");
                    }
                    remoteViews.setTextViewText(C2752R.C2754id.rowDetails, sb.toString());
                    Intent m35998a = AfterCallPopupActivity.f9723g.m35998a(this.f14769a, mo16159n, null, true);
                    m35998a.putExtra("widgetClick", true);
                    remoteViews.setOnClickFillInIntent(C2752R.C2754id.widgetRowContainer, m35998a);
                    return remoteViews;
                }
                remoteViews.setViewVisibility(C2752R.C2754id.widgetRowContainer, 8);
                return remoteViews;
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public void onCreate() {
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public void onDataSetChanged() {
            synchronized (this) {
                AbstractC17373b abstractC17373b = this.f14771c;
                if (abstractC17373b != null) {
                    abstractC17373b.close();
                    this.f14771c = null;
                }
                try {
                    this.f14771c = this.f14778j.mo11854a().mo16232p().mo11831c();
                } catch (InterruptedException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                }
            }
            this.f14772d.partiallyUpdateAppWidget(this.f14770b, new RemoteViews(this.f14769a.getPackageName(), this.f14776h));
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public void onDestroy() {
            synchronized (this) {
                AbstractC17373b abstractC17373b = this.f14771c;
                if (abstractC17373b != null && !abstractC17373b.isClosed()) {
                    this.f14771c.close();
                    this.f14771c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m34741a(HistoryEvent historyEvent) {
        Contact contact = historyEvent.f11539f;
        boolean z = contact != null && contact.m35574A0();
        boolean z2 = true;
        if (!(historyEvent.f11554u != null && !ActionSource.NONE.toString().equals(historyEvent.f11554u))) {
            z2 = z;
        }
        return z2;
    }

    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new C4471a(getApplicationContext(), intent);
    }
}
