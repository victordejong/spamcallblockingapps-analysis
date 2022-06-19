package com.truecaller.bizmon.newBusiness.components.openhours;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.amazon.device.ads.MraidCloseCommand;
import com.amazon.device.ads.MraidOpenCommand;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.components.ProfileDetailView;
import com.truecaller.profile.data.dto.businessV2.OpenHours;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p308b.p311k.C7666a;
import p193e.p194a.p294b.p355m.C8052b1;
import s1.f0.v;
import s1.g;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001:\u0001'J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J7\u0010\u000e\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJC\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR#\u0010 \u001a\b\u0012\u0004\u0012\u00020\b0\u001b8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010&\u001a\u00020!8\u0006@\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;", "openHours", "Ls1/s;", "setIndividualTime", "(Ljava/util/List;)V", "", "locId", "Le/a/p5/h0;", "themedResourceProvider", "Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;", "widgetListener", "g1", "(Ljava/util/List;Ljava/lang/String;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;)V", "Landroid/widget/TextView;", "lblDay", "lblOpen", "lblClose", "day", MraidOpenCommand.NAME, MraidCloseCommand.NAME, "h1", "(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "f1", "(Landroid/widget/TextView;Landroid/widget/TextView;)V", "", "u", "Ls1/g;", "getDaysOfWeek", "()[Ljava/lang/String;", "daysOfWeek", "Le/a/b/m/b1;", "t", "Le/a/b/m/b1;", "getBinding", "()Le/a/b/m/b1;", "binding", "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget.class */
public final class BizOpenHoursWidget extends ConstraintLayout {

    /* renamed from: t */
    public final C8052b1 f10321t;

    /* renamed from: u */
    public final g f10322u;

    /* renamed from: com.truecaller.bizmon.newBusiness.components.openhours.BizOpenHoursWidget$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a.class */
    public interface AbstractC3499a {
        /* renamed from: kh */
        void mo29516kh(List<OpenHours> list, String str);
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.components.openhours.BizOpenHoursWidget$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b.class */
    public static final class View$OnClickListenerC3500b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ List f10323a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC19233h0 f10324b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC3499a f10325c;

        /* renamed from: d */
        public final /* synthetic */ String f10326d;

        public View$OnClickListenerC3500b(BizOpenHoursWidget bizOpenHoursWidget, List list, AbstractC19233h0 abstractC19233h0, AbstractC3499a abstractC3499a, String str) {
            this.f10323a = list;
            this.f10324b = abstractC19233h0;
            this.f10325c = abstractC3499a;
            this.f10326d = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f10325c.mo29516kh(this.f10323a, this.f10326d);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BizOpenHoursWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(C17422k.m16113E(context, true)).inflate(C3478R.layout.layout_biz_openhours, this);
        int i = C3478R.C3480id.bgTimingDetails;
        View findViewById = findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.bgTimingDetailsCommon;
            View findViewById2 = findViewById(i);
            if (findViewById2 != null) {
                i = C3478R.C3480id.editTiming;
                ImageView imageView = (ImageView) findViewById(i);
                if (imageView != null) {
                    i = C3478R.C3480id.groupCommonTime;
                    Group group = (Group) findViewById(i);
                    if (group != null) {
                        i = C3478R.C3480id.groupIndividualTime;
                        Group group2 = (Group) findViewById(i);
                        if (group2 != null) {
                            i = C3478R.C3480id.lblClosingTime;
                            TextView textView = (TextView) findViewById(i);
                            if (textView != null) {
                                i = C3478R.C3480id.lblDaysOpen;
                                TextView textView2 = (TextView) findViewById(i);
                                if (textView2 != null) {
                                    i = C3478R.C3480id.lblFriday;
                                    TextView textView3 = (TextView) findViewById(i);
                                    if (textView3 != null) {
                                        i = C3478R.C3480id.lblFridayClose;
                                        TextView textView4 = (TextView) findViewById(i);
                                        if (textView4 != null) {
                                            i = C3478R.C3480id.lblFridayOpen;
                                            TextView textView5 = (TextView) findViewById(i);
                                            if (textView5 != null) {
                                                i = C3478R.C3480id.lblMonday;
                                                TextView textView6 = (TextView) findViewById(i);
                                                if (textView6 != null) {
                                                    i = C3478R.C3480id.lblMondayClose;
                                                    TextView textView7 = (TextView) findViewById(i);
                                                    if (textView7 != null) {
                                                        i = C3478R.C3480id.lblMondayOpen;
                                                        TextView textView8 = (TextView) findViewById(i);
                                                        if (textView8 != null) {
                                                            i = C3478R.C3480id.lblOpeningTime;
                                                            TextView textView9 = (TextView) findViewById(i);
                                                            if (textView9 != null) {
                                                                i = C3478R.C3480id.lblSaturday;
                                                                TextView textView10 = (TextView) findViewById(i);
                                                                if (textView10 != null) {
                                                                    i = C3478R.C3480id.lblSaturdayClose;
                                                                    TextView textView11 = (TextView) findViewById(i);
                                                                    if (textView11 != null) {
                                                                        i = C3478R.C3480id.lblSaturdayOpen;
                                                                        TextView textView12 = (TextView) findViewById(i);
                                                                        if (textView12 != null) {
                                                                            i = C3478R.C3480id.lblSunday;
                                                                            TextView textView13 = (TextView) findViewById(i);
                                                                            if (textView13 != null) {
                                                                                i = C3478R.C3480id.lblSundayClose;
                                                                                TextView textView14 = (TextView) findViewById(i);
                                                                                if (textView14 != null) {
                                                                                    i = C3478R.C3480id.lblSundayOpen;
                                                                                    TextView textView15 = (TextView) findViewById(i);
                                                                                    if (textView15 != null) {
                                                                                        i = C3478R.C3480id.lblThursday;
                                                                                        TextView textView16 = (TextView) findViewById(i);
                                                                                        if (textView16 != null) {
                                                                                            i = C3478R.C3480id.lblThursdayClose;
                                                                                            TextView textView17 = (TextView) findViewById(i);
                                                                                            if (textView17 != null) {
                                                                                                i = C3478R.C3480id.lblThursdayOpen;
                                                                                                TextView textView18 = (TextView) findViewById(i);
                                                                                                if (textView18 != null) {
                                                                                                    i = C3478R.C3480id.lblTuesday;
                                                                                                    TextView textView19 = (TextView) findViewById(i);
                                                                                                    if (textView19 != null) {
                                                                                                        i = C3478R.C3480id.lblTuesdayClose;
                                                                                                        TextView textView20 = (TextView) findViewById(i);
                                                                                                        if (textView20 != null) {
                                                                                                            i = C3478R.C3480id.lblTuesdayOpen;
                                                                                                            TextView textView21 = (TextView) findViewById(i);
                                                                                                            if (textView21 != null) {
                                                                                                                i = C3478R.C3480id.lblWednesday;
                                                                                                                TextView textView22 = (TextView) findViewById(i);
                                                                                                                if (textView22 != null) {
                                                                                                                    i = C3478R.C3480id.lblWednesdayClose;
                                                                                                                    TextView textView23 = (TextView) findViewById(i);
                                                                                                                    if (textView23 != null) {
                                                                                                                        i = C3478R.C3480id.lblWednesdayOpen;
                                                                                                                        TextView textView24 = (TextView) findViewById(i);
                                                                                                                        if (textView24 != null) {
                                                                                                                            i = C3478R.C3480id.pdvCloseTime;
                                                                                                                            ProfileDetailView profileDetailView = (ProfileDetailView) findViewById(i);
                                                                                                                            if (profileDetailView != null) {
                                                                                                                                i = C3478R.C3480id.pdvDays;
                                                                                                                                ProfileDetailView profileDetailView2 = (ProfileDetailView) findViewById(i);
                                                                                                                                if (profileDetailView2 != null) {
                                                                                                                                    i = C3478R.C3480id.pdvOpenTime;
                                                                                                                                    ProfileDetailView profileDetailView3 = (ProfileDetailView) findViewById(i);
                                                                                                                                    if (profileDetailView3 != null) {
                                                                                                                                        i = C3478R.C3480id.titleTiming;
                                                                                                                                        TextView textView25 = (TextView) findViewById(i);
                                                                                                                                        if (textView25 != null) {
                                                                                                                                            C8052b1 c8052b1 = new C8052b1(this, findViewById, findViewById2, imageView, group, group2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, textView23, textView24, profileDetailView, profileDetailView2, profileDetailView3, textView25);
                                                                                                                                            l.d(c8052b1, "LayoutBizOpenhoursBindin…hemeWrapper(true)), this)");
                                                                                                                                            this.f10321t = c8052b1;
                                                                                                                                            this.f10322u = C25225a.m3978P1(new C7666a(this));
                                                                                                                                            return;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    private final void setIndividualTime(List<OpenHours> list) {
        Integer[] numArr = new Integer[7];
        C8052b1 c8052b1 = this.f10321t;
        for (OpenHours openHours : list) {
            Integer weekday = openHours.getWeekday();
            if (weekday != null) {
                int intValue = weekday.intValue();
                numArr[intValue - 1] = Integer.valueOf(intValue);
            }
            Integer weekday2 = openHours.getWeekday();
            if (weekday2 != null && weekday2.intValue() == 1) {
                TextView textView = c8052b1.f24812p;
                l.d(textView, "lblSunday");
                TextView textView2 = c8052b1.f24814r;
                l.d(textView2, "lblSundayOpen");
                TextView textView3 = c8052b1.f24813q;
                l.d(textView3, "lblSundayClose");
                String string = getResources().getString(C3478R.string.Sunday);
                l.d(string, "resources.getString(R.string.Sunday)");
                m35863h1(textView, textView2, textView3, string, openHours.getOpens(), openHours.getCloses());
            } else if (weekday2 != null && weekday2.intValue() == 2) {
                TextView textView4 = c8052b1.f24806j;
                l.d(textView4, "lblMonday");
                TextView textView5 = c8052b1.f24808l;
                l.d(textView5, "lblMondayOpen");
                TextView textView6 = c8052b1.f24807k;
                l.d(textView6, "lblMondayClose");
                String string2 = getResources().getString(C3478R.string.Monday);
                l.d(string2, "resources.getString(R.string.Monday)");
                m35863h1(textView4, textView5, textView6, string2, openHours.getOpens(), openHours.getCloses());
            } else if (weekday2 != null && weekday2.intValue() == 3) {
                TextView textView7 = c8052b1.f24818v;
                l.d(textView7, "lblTuesday");
                TextView textView8 = c8052b1.f24820x;
                l.d(textView8, "lblTuesdayOpen");
                TextView textView9 = c8052b1.f24819w;
                l.d(textView9, "lblTuesdayClose");
                String string3 = getResources().getString(C3478R.string.Tuesday);
                l.d(string3, "resources.getString(R.string.Tuesday)");
                m35863h1(textView7, textView8, textView9, string3, openHours.getOpens(), openHours.getCloses());
            } else if (weekday2 != null && weekday2.intValue() == 4) {
                TextView textView10 = c8052b1.f24821y;
                l.d(textView10, "lblWednesday");
                TextView textView11 = c8052b1.f24793A;
                l.d(textView11, "lblWednesdayOpen");
                TextView textView12 = c8052b1.f24822z;
                l.d(textView12, "lblWednesdayClose");
                String string4 = getResources().getString(C3478R.string.Wednesday);
                l.d(string4, "resources.getString(R.string.Wednesday)");
                m35863h1(textView10, textView11, textView12, string4, openHours.getOpens(), openHours.getCloses());
            } else if (weekday2 != null && weekday2.intValue() == 5) {
                TextView textView13 = c8052b1.f24815s;
                l.d(textView13, "lblThursday");
                TextView textView14 = c8052b1.f24817u;
                l.d(textView14, "lblThursdayOpen");
                TextView textView15 = c8052b1.f24816t;
                l.d(textView15, "lblThursdayClose");
                String string5 = getResources().getString(C3478R.string.Thursday);
                l.d(string5, "resources.getString(R.string.Thursday)");
                m35863h1(textView13, textView14, textView15, string5, openHours.getOpens(), openHours.getCloses());
            } else if (weekday2 != null && weekday2.intValue() == 6) {
                TextView textView16 = c8052b1.f24803g;
                l.d(textView16, "lblFriday");
                TextView textView17 = c8052b1.f24805i;
                l.d(textView17, "lblFridayOpen");
                TextView textView18 = c8052b1.f24804h;
                l.d(textView18, "lblFridayClose");
                String string6 = getResources().getString(C3478R.string.Friday);
                l.d(string6, "resources.getString(R.string.Friday)");
                m35863h1(textView16, textView17, textView18, string6, openHours.getOpens(), openHours.getCloses());
            } else if (weekday2 != null && weekday2.intValue() == 7) {
                TextView textView19 = c8052b1.f24809m;
                l.d(textView19, "lblSaturday");
                TextView textView20 = c8052b1.f24811o;
                l.d(textView20, "lblSaturdayOpen");
                TextView textView21 = c8052b1.f24810n;
                l.d(textView21, "lblSaturdayClose");
                String string7 = getResources().getString(C3478R.string.Saturday);
                l.d(string7, "resources.getString(R.string.Saturday)");
                m35863h1(textView19, textView20, textView21, string7, openHours.getOpens(), openHours.getCloses());
            }
        }
        int i = 0;
        for (int i2 = 0; i2 < 7; i2++) {
            i++;
            if (numArr[i2] == null) {
                switch (i) {
                    case 1:
                        TextView textView22 = c8052b1.f24814r;
                        l.d(textView22, "lblSundayOpen");
                        TextView textView23 = c8052b1.f24813q;
                        l.d(textView23, "lblSundayClose");
                        m35865f1(textView22, textView23);
                        continue;
                    case 2:
                        TextView textView24 = c8052b1.f24808l;
                        l.d(textView24, "lblMondayOpen");
                        TextView textView25 = c8052b1.f24807k;
                        l.d(textView25, "lblMondayClose");
                        m35865f1(textView24, textView25);
                        continue;
                    case 3:
                        TextView textView26 = c8052b1.f24820x;
                        l.d(textView26, "lblTuesdayOpen");
                        TextView textView27 = c8052b1.f24819w;
                        l.d(textView27, "lblTuesdayClose");
                        m35865f1(textView26, textView27);
                        continue;
                    case 4:
                        TextView textView28 = c8052b1.f24793A;
                        l.d(textView28, "lblWednesdayOpen");
                        TextView textView29 = c8052b1.f24822z;
                        l.d(textView29, "lblWednesdayClose");
                        m35865f1(textView28, textView29);
                        continue;
                    case 5:
                        TextView textView30 = c8052b1.f24817u;
                        l.d(textView30, "lblThursdayOpen");
                        TextView textView31 = c8052b1.f24816t;
                        l.d(textView31, "lblThursdayClose");
                        m35865f1(textView30, textView31);
                        continue;
                    case 6:
                        TextView textView32 = c8052b1.f24805i;
                        l.d(textView32, "lblFridayOpen");
                        TextView textView33 = c8052b1.f24804h;
                        l.d(textView33, "lblFridayClose");
                        m35865f1(textView32, textView33);
                        continue;
                    case 7:
                        TextView textView34 = c8052b1.f24811o;
                        l.d(textView34, "lblSaturdayOpen");
                        TextView textView35 = c8052b1.f24810n;
                        l.d(textView35, "lblSaturdayClose");
                        m35865f1(textView34, textView35);
                        continue;
                }
            }
        }
    }

    /* renamed from: f1 */
    public final void m35865f1(TextView textView, TextView textView2) {
        textView.setText(getResources().getString(C3478R.string.BusinessProfile_Closed));
        C19286f.m13687Q(textView2);
    }

    /* renamed from: g1 */
    public final void m35864g1(List<OpenHours> list, String str, AbstractC19233h0 abstractC19233h0, AbstractC3499a abstractC3499a) {
        l.e(abstractC19233h0, "themedResourceProvider");
        l.e(abstractC3499a, "widgetListener");
        C8052b1 c8052b1 = this.f10321t;
        if (list == null || !(!list.isEmpty())) {
            Group group = c8052b1.f24802f;
            l.d(group, "groupIndividualTime");
            C19286f.m13689O(group);
            Group group2 = c8052b1.f24801e;
            l.d(group2, "groupCommonTime");
            C19286f.m13684T(group2);
            ProfileDetailView.m35869f1(c8052b1.f24795C, null, null, true, 3);
            ProfileDetailView.m35869f1(c8052b1.f24796D, null, null, true, 3);
            ProfileDetailView.m35869f1(c8052b1.f24794B, null, null, true, 3);
            c8052b1.f24800d.setImageDrawable(abstractC19233h0.mo13767c(C3478R.C3479drawable.ic_biz_add));
        } else {
            if (C18334g0.m15234d0(list)) {
                Group group3 = c8052b1.f24801e;
                l.d(group3, "groupCommonTime");
                C19286f.m13684T(group3);
                Group group4 = c8052b1.f24802f;
                l.d(group4, "groupIndividualTime");
                C19286f.m13689O(group4);
                String str2 = "";
                for (OpenHours openHours : list) {
                    Integer weekday = openHours.getWeekday();
                    if (weekday != null) {
                        str2 = C22128a.m8618h(C22128a.m8728C(str2), getDaysOfWeek()[weekday.intValue() - 1], ", ");
                    }
                }
                Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.CharSequence");
                String obj = v.g0(str2).toString();
                String substring = obj.substring(0, obj.length() - 1);
                l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                ProfileDetailView.m35869f1(c8052b1.f24795C, substring, null, true, 2);
                ProfileDetailView.m35869f1(c8052b1.f24796D, ((OpenHours) i.B(list)).getOpens(), null, true, 2);
                ProfileDetailView.m35869f1(c8052b1.f24794B, ((OpenHours) i.B(list)).getCloses(), null, true, 2);
            } else {
                Group group5 = c8052b1.f24802f;
                l.d(group5, "groupIndividualTime");
                C19286f.m13684T(group5);
                Group group6 = c8052b1.f24801e;
                l.d(group6, "groupCommonTime");
                C19286f.m13689O(group6);
                setIndividualTime(list);
            }
            c8052b1.f24800d.setImageDrawable(abstractC19233h0.mo13767c(C3478R.C3479drawable.ic_biz_edit));
        }
        c8052b1.f24800d.setOnClickListener(new View$OnClickListenerC3500b(this, list, abstractC19233h0, abstractC3499a, str));
    }

    public final C8052b1 getBinding() {
        return this.f10321t;
    }

    public final String[] getDaysOfWeek() {
        return (String[]) this.f10322u.getValue();
    }

    /* renamed from: h1 */
    public final void m35863h1(TextView textView, TextView textView2, TextView textView3, String str, String str2, String str3) {
        C19286f.m13684T(textView3);
        textView.setText(str);
        textView2.setText(str2);
        textView3.setText(str3);
    }
}
