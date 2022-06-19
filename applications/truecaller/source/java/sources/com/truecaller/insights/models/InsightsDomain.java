package com.truecaller.insights.models;

import androidx.annotation.Keep;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper;
import com.truecaller.insights.binders.utils.OrderStatus;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.updates.UpdateCategory;
import e.m.e.d0.b;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.g;
import w3.b.a.p;
import w3.b.a.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��2\u00020\u0001:\b\"#$%&'()B\u0011\b\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b \u0010!R\u0016\u0010\u0005\u001a\u00020\u00028&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0004R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\bR\u0016\u0010\u001b\u001a\u00020\u00188&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\u0082\u0001\b*+,-./01¨\u00062"}, d2 = {"Lcom/truecaller/insights/models/InsightsDomain;", "", "", "getMessage", "()Ljava/lang/String;", "message", "", "getMsgId", "()J", RemoteMessageConst.MSGID, "category", "Ljava/lang/String;", "getCategory", "getSender", AnalyticsConstants.SENDER, "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "", "isSenderVerifiedForSmartFeatures", "()Z", "getConversationId", "conversationId", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "Lw3/b/a/b;", "getMsgDateTime", "()Lw3/b/a/b;", "msgDateTime", "<init>", "(Ljava/lang/String;)V", "a", "Bill", C22021b.f61237c, AbstractC2405c.f7629a, "d", "e", "f", "g", "Lcom/truecaller/insights/models/InsightsDomain$Bill;", "Lcom/truecaller/insights/models/InsightsDomain$a;", "Lcom/truecaller/insights/models/InsightsDomain$e;", "Lcom/truecaller/insights/models/InsightsDomain$f;", "Lcom/truecaller/insights/models/InsightsDomain$b;", "Lcom/truecaller/insights/models/InsightsDomain$c;", "Lcom/truecaller/insights/models/InsightsDomain$d;", "Lcom/truecaller/insights/models/InsightsDomain$g;", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain.class */
public abstract class InsightsDomain {
    @b("d")
    private final String category;

    @Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010��\n\u0002\b*\b\u0087\b\u0018��2\u00020\u0001B\u0091\u0002\u0012\b\b\u0002\u0010,\u001a\u00020\u0002\u0012\b\b\u0002\u0010-\u001a\u00020\u0002\u0012\b\b\u0002\u0010.\u001a\u00020\u0002\u0012\b\b\u0002\u0010/\u001a\u00020\u0002\u0012\b\b\u0002\u00100\u001a\u00020\u0002\u0012\b\b\u0002\u00101\u001a\u00020\u0002\u0012\b\b\u0002\u00102\u001a\u00020\u0002\u0012\b\b\u0002\u00103\u001a\u00020\u0002\u0012\b\b\u0002\u00104\u001a\u00020\u0002\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u00107\u001a\u00020\u0002\u0012\b\b\u0002\u00108\u001a\u00020\u0010\u0012\b\b\u0002\u00109\u001a\u00020\u0002\u0012\b\b\u0002\u0010:\u001a\u00020\u0002\u0012\b\b\u0002\u0010;\u001a\u00020\u0017\u0012\b\b\u0002\u0010<\u001a\u00020\u001a\u0012\b\b\u0002\u0010=\u001a\u00020\u001d\u0012\b\b\u0002\u0010>\u001a\u00020\u0002\u0012\b\b\u0002\u0010?\u001a\u00020\u0002\u0012\b\b\u0002\u0010@\u001a\u00020\u0002\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010#\u0012\b\b\u0002\u0010B\u001a\u00020\u0017\u0012\b\b\u0002\u0010C\u001a\u00020'\u0012\b\b\u0002\u0010D\u001a\u00020\u001d\u0012\b\b\u0002\u0010E\u001a\u00020\u0002¢\u0006\u0004\br\u0010sJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0010HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0004J\u0010\u0010\u0018\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dHÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b \u0010\u0004J\u0010\u0010!\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u0004J\u0010\u0010\"\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u0004J\u0012\u0010$\u001a\u0004\u0018\u00010#HÆ\u0003¢\u0006\u0004\b$\u0010%J\u0010\u0010&\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\b&\u0010\u0019J\u0010\u0010(\u001a\u00020'HÆ\u0003¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\u001dHÆ\u0003¢\u0006\u0004\b*\u0010\u001fJ\u0010\u0010+\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b+\u0010\u0004J\u009a\u0002\u0010F\u001a\u00020��2\b\b\u0002\u0010,\u001a\u00020\u00022\b\b\u0002\u0010-\u001a\u00020\u00022\b\b\u0002\u0010.\u001a\u00020\u00022\b\b\u0002\u0010/\u001a\u00020\u00022\b\b\u0002\u00100\u001a\u00020\u00022\b\b\u0002\u00101\u001a\u00020\u00022\b\b\u0002\u00102\u001a\u00020\u00022\b\b\u0002\u00103\u001a\u00020\u00022\b\b\u0002\u00104\u001a\u00020\u00022\n\b\u0002\u00105\u001a\u0004\u0018\u00010\r2\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u00107\u001a\u00020\u00022\b\b\u0002\u00108\u001a\u00020\u00102\b\b\u0002\u00109\u001a\u00020\u00022\b\b\u0002\u0010:\u001a\u00020\u00022\b\b\u0002\u0010;\u001a\u00020\u00172\b\b\u0002\u0010<\u001a\u00020\u001a2\b\b\u0002\u0010=\u001a\u00020\u001d2\b\b\u0002\u0010>\u001a\u00020\u00022\b\b\u0002\u0010?\u001a\u00020\u00022\b\b\u0002\u0010@\u001a\u00020\u00022\n\b\u0002\u0010A\u001a\u0004\u0018\u00010#2\b\b\u0002\u0010B\u001a\u00020\u00172\b\b\u0002\u0010C\u001a\u00020'2\b\b\u0002\u0010D\u001a\u00020\u001d2\b\b\u0002\u0010E\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\bF\u0010GJ\u0010\u0010H\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\bH\u0010\u0004J\u0010\u0010I\u001a\u00020\u001aHÖ\u0001¢\u0006\u0004\bI\u0010\u001cJ\u001a\u0010L\u001a\u00020\u001d2\b\u0010K\u001a\u0004\u0018\u00010JHÖ\u0003¢\u0006\u0004\bL\u0010MR\u001c\u0010C\u001a\u00020'8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bC\u0010N\u001a\u0004\bO\u0010)R\u0019\u0010P\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010\u0012R\u001c\u0010.\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010S\u001a\u0004\bT\u0010\u0004R\u001c\u0010/\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b/\u0010S\u001a\u0004\bU\u0010\u0004R\u001e\u00106\u001a\u0004\u0018\u00010\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b6\u0010Q\u001a\u0004\bV\u0010\u0012R\u001c\u00107\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b7\u0010S\u001a\u0004\bW\u0010\u0004R\u001c\u0010<\u001a\u00020\u001a8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b<\u0010X\u001a\u0004\bY\u0010\u001cR\u001c\u0010B\u001a\u00020\u00178\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bB\u0010Z\u001a\u0004\b[\u0010\u0019R\u001c\u00102\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b2\u0010S\u001a\u0004\b\\\u0010\u0004R\u001c\u0010;\u001a\u00020\u00178\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b;\u0010Z\u001a\u0004\b]\u0010\u0019R\u001c\u0010,\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b,\u0010S\u001a\u0004\b^\u0010\u0004R\u0019\u00109\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b9\u0010S\u001a\u0004\b_\u0010\u0004R\u001c\u00108\u001a\u00020\u00108\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b8\u0010Q\u001a\u0004\b`\u0010\u0012R\u001c\u00100\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010S\u001a\u0004\ba\u0010\u0004R\u001e\u00105\u001a\u0004\u0018\u00010\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b5\u0010b\u001a\u0004\bc\u0010\u000fR\u001e\u0010A\u001a\u0004\u0018\u00010#8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bA\u0010d\u001a\u0004\be\u0010%R\u001c\u00103\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b3\u0010S\u001a\u0004\bf\u0010\u0004R\u001c\u0010-\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010S\u001a\u0004\bg\u0010\u0004R\u0019\u0010h\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\bh\u0010Q\u001a\u0004\bi\u0010\u0012R\u0019\u0010:\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b:\u0010S\u001a\u0004\bj\u0010\u0004R\u001c\u00101\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b1\u0010S\u001a\u0004\bk\u0010\u0004R\u001c\u0010E\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bE\u0010S\u001a\u0004\bl\u0010\u0004R\u001c\u0010?\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b?\u0010S\u001a\u0004\bm\u0010\u0004R\u001c\u0010>\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b>\u0010S\u001a\u0004\bn\u0010\u0004R\u001c\u00104\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b4\u0010S\u001a\u0004\bo\u0010\u0004R\u001c\u0010=\u001a\u00020\u001d8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b=\u0010p\u001a\u0004\b=\u0010\u001fR\u001c\u0010@\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b@\u0010S\u001a\u0004\bq\u0010\u0004R\u001c\u0010D\u001a\u00020\u001d8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bD\u0010p\u001a\u0004\bD\u0010\u001f¨\u0006t"}, d2 = {"Lcom/truecaller/insights/models/InsightsDomain$Bill;", "Lcom/truecaller/insights/models/InsightsDomain;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "Lw3/b/a/p;", "component10", "()Lw3/b/a/p;", "Lw3/b/a/b;", "component11", "()Lw3/b/a/b;", "component12", "component13", "component14", "component15", "", "component16", "()J", "", "component17", "()I", "", "component18", "()Z", "component19", "component20", "component21", "Le/a/c/r/j/b;", "component22", "()Le/a/c/r/j/b;", "component23", "Lcom/truecaller/insights/models/DomainOrigin;", "component24", "()Lcom/truecaller/insights/models/DomainOrigin;", "component25", "component26", "billCategory", "type", "dueInsType", "auxType", "billNum", "vendorName", "insNum", "dueAmt", "auxAmt", "dueDate", "dueDateTime", AnalyticsConstants.SENDER, "msgDateTime", "paymentStatus", "location", "conversationId", "spamCategory", "isIM", "url", "urlType", "dueCurrency", "actionState", RemoteMessageConst.MSGID, "origin", "isSenderVerifiedForSmartFeatures", "message", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/p;Lw3/b/a/b;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/b;JLcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;)Lcom/truecaller/insights/models/InsightsDomain$Bill;", "toString", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "billDueDateTime", "Lw3/b/a/b;", "getBillDueDateTime", "Ljava/lang/String;", "getDueInsType", "getAuxType", "getDueDateTime", "getSender", "I", "getSpamCategory", "J", "getMsgId", "getInsNum", "getConversationId", "getBillCategory", "getPaymentStatus", "getMsgDateTime", "getBillNum", "Lw3/b/a/p;", "getDueDate", "Le/a/c/r/j/b;", "getActionState", "getDueAmt", "getType", "billDateTime", "getBillDateTime", "getLocation", "getVendorName", "getMessage", "getUrlType", "getUrl", "getAuxAmt", "Z", "getDueCurrency", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/p;Lw3/b/a/b;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/b;JLcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$Bill.class */
    public static final class Bill extends InsightsDomain {
        private final C10582b actionState;
        @b("val4")
        private final String auxAmt;
        @b("f")
        private final String auxType;
        @b("k")
        private final String billCategory;
        private final w3.b.a.b billDateTime;
        private final w3.b.a.b billDueDateTime;
        @b("g")
        private final String billNum;
        @b("conversation_id")
        private final long conversationId;
        @b("val3")
        private final String dueAmt;
        @b("dffVal1")
        private final String dueCurrency;
        @b("date")
        private final p dueDate;
        @b("datetime")
        private final w3.b.a.b dueDateTime;
        @b("o")
        private final String dueInsType;
        @b("val1")
        private final String insNum;
        @b("is_im")
        private final boolean isIM;
        private final boolean isSenderVerifiedForSmartFeatures;
        private final String location;
        private final String message;
        @b("msgdatetime")
        private final w3.b.a.b msgDateTime;
        private final long msgId;
        private final DomainOrigin origin;
        private final String paymentStatus;
        @b("address")
        private final String sender;
        @b("spam_category")
        private final int spamCategory;
        @b(AbstractC2405c.f7629a)
        private final String type;
        @b("dffVal5")
        private final String url;
        @b("dffVal3")
        private final String urlType;
        @b("s")
        private final String vendorName;

        public Bill() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0L, 0, false, null, null, null, null, 0L, null, false, null, 67108863, null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Bill(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, p pVar, w3.b.a.b bVar, String str10, w3.b.a.b bVar2, String str11, String str12, long j, int i, boolean z, String str13, String str14, String str15, C10582b c10582b, long j2, DomainOrigin domainOrigin, boolean z2, String str16) {
            super("Bill", null);
            l.e(str, "billCategory");
            l.e(str2, "type");
            l.e(str3, "dueInsType");
            l.e(str4, "auxType");
            l.e(str5, "billNum");
            l.e(str6, "vendorName");
            l.e(str7, "insNum");
            l.e(str8, "dueAmt");
            l.e(str9, "auxAmt");
            l.e(str10, AnalyticsConstants.SENDER);
            l.e(bVar2, "msgDateTime");
            l.e(str11, "paymentStatus");
            l.e(str12, "location");
            l.e(str13, "url");
            l.e(str14, "urlType");
            l.e(str15, "dueCurrency");
            l.e(domainOrigin, "origin");
            l.e(str16, "message");
            this.billCategory = str;
            this.type = str2;
            this.dueInsType = str3;
            this.auxType = str4;
            this.billNum = str5;
            this.vendorName = str6;
            this.insNum = str7;
            this.dueAmt = str8;
            this.auxAmt = str9;
            this.dueDate = pVar;
            this.dueDateTime = bVar;
            this.sender = str10;
            this.msgDateTime = bVar2;
            this.paymentStatus = str11;
            this.location = str12;
            this.conversationId = j;
            this.spamCategory = i;
            this.isIM = z;
            this.url = str13;
            this.urlType = str14;
            this.dueCurrency = str15;
            this.actionState = c10582b;
            this.msgId = j2;
            this.origin = domainOrigin;
            this.isSenderVerifiedForSmartFeatures = z2;
            this.message = str16;
            this.billDateTime = pVar != null ? pVar.m((g) null) : getMsgDateTime();
            this.billDueDateTime = bVar == null ? getMsgDateTime() : bVar;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r46v1 */
        /* JADX WARN: Type inference failed for: r46v2 */
        /* JADX WARN: Type inference failed for: r46v3 */
        /* JADX WARN: Type inference failed for: r54v1 */
        /* JADX WARN: Type inference failed for: r54v2 */
        /* JADX WARN: Type inference failed for: r54v3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Bill(java.lang.String r31, java.lang.String r32, java.lang.String r33, java.lang.String r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, java.lang.String r38, java.lang.String r39, w3.b.a.p r40, w3.b.a.b r41, java.lang.String r42, w3.b.a.b r43, java.lang.String r44, java.lang.String r45, long r46, int r48, boolean r49, java.lang.String r50, java.lang.String r51, java.lang.String r52, p193e.p194a.p437c.p580r.p589j.C10582b r53, long r54, com.truecaller.insights.models.DomainOrigin r56, boolean r57, java.lang.String r58, int r59, s1.z.c.f r60) {
            /*
                Method dump skipped, instructions count: 475
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.models.InsightsDomain.Bill.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, w3.b.a.p, w3.b.a.b, java.lang.String, w3.b.a.b, java.lang.String, java.lang.String, long, int, boolean, java.lang.String, java.lang.String, java.lang.String, e.a.c.r.j.b, long, com.truecaller.insights.models.DomainOrigin, boolean, java.lang.String, int, s1.z.c.f):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r0v75, types: [long] */
        /* JADX WARN: Type inference failed for: r30v0, types: [com.truecaller.insights.models.InsightsDomain$Bill] */
        /* JADX WARN: Type inference failed for: r46v1 */
        /* JADX WARN: Type inference failed for: r46v2 */
        /* JADX WARN: Type inference failed for: r46v3 */
        /* JADX WARN: Type inference failed for: r54v1 */
        /* JADX WARN: Type inference failed for: r54v2 */
        /* JADX WARN: Type inference failed for: r54v3 */
        public static /* synthetic */ Bill copy$default(Bill bill, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, p pVar, w3.b.a.b bVar, String str10, w3.b.a.b bVar2, String str11, String str12, long j, int i, boolean z, String str13, String str14, String str15, C10582b c10582b, long j2, DomainOrigin domainOrigin, boolean z2, String str16, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = ((Bill) bill).billCategory;
            }
            if ((i2 & 2) != 0) {
                str2 = ((Bill) bill).type;
            }
            if ((i2 & 4) != 0) {
                str3 = ((Bill) bill).dueInsType;
            }
            if ((i2 & 8) != 0) {
                str4 = ((Bill) bill).auxType;
            }
            if ((i2 & 16) != 0) {
                str5 = ((Bill) bill).billNum;
            }
            if ((i2 & 32) != 0) {
                str6 = ((Bill) bill).vendorName;
            }
            if ((i2 & 64) != 0) {
                str7 = ((Bill) bill).insNum;
            }
            if ((i2 & 128) != 0) {
                str8 = ((Bill) bill).dueAmt;
            }
            if ((i2 & 256) != 0) {
                str9 = ((Bill) bill).auxAmt;
            }
            if ((i2 & 512) != 0) {
                pVar = ((Bill) bill).dueDate;
            }
            if ((i2 & 1024) != 0) {
                bVar = ((Bill) bill).dueDateTime;
            }
            if ((i2 & 2048) != 0) {
                str10 = bill.getSender();
            }
            if ((i2 & 4096) != 0) {
                bVar2 = bill.getMsgDateTime();
            }
            if ((i2 & 8192) != 0) {
                str11 = ((Bill) bill).paymentStatus;
            }
            if ((i2 & 16384) != 0) {
                str12 = ((Bill) bill).location;
            }
            ?? r46 = j;
            if ((i2 & 32768) != 0) {
                r46 = bill.getConversationId();
            }
            if ((i2 & 65536) != 0) {
                i = ((Bill) bill).spamCategory;
            }
            if ((i2 & 131072) != 0) {
                z = ((Bill) bill).isIM;
            }
            if ((i2 & 262144) != 0) {
                str13 = ((Bill) bill).url;
            }
            if ((i2 & 524288) != 0) {
                str14 = ((Bill) bill).urlType;
            }
            if ((i2 & 1048576) != 0) {
                str15 = ((Bill) bill).dueCurrency;
            }
            if ((i2 & 2097152) != 0) {
                c10582b = bill.getActionState();
            }
            ?? r54 = j2;
            if ((i2 & 4194304) != 0) {
                r54 = bill.getMsgId();
            }
            if ((i2 & 8388608) != 0) {
                domainOrigin = bill.getOrigin();
            }
            if ((i2 & 16777216) != 0) {
                z2 = bill.isSenderVerifiedForSmartFeatures();
            }
            if ((i2 & 33554432) != 0) {
                str16 = bill.getMessage();
            }
            return bill.copy(str, str2, str3, str4, str5, str6, str7, str8, str9, pVar, bVar, str10, bVar2, str11, str12, r46, i, z, str13, str14, str15, c10582b, r54, domainOrigin, z2, str16);
        }

        public final String component1() {
            return this.billCategory;
        }

        public final p component10() {
            return this.dueDate;
        }

        public final w3.b.a.b component11() {
            return this.dueDateTime;
        }

        public final String component12() {
            return getSender();
        }

        public final w3.b.a.b component13() {
            return getMsgDateTime();
        }

        public final String component14() {
            return this.paymentStatus;
        }

        public final String component15() {
            return this.location;
        }

        public final long component16() {
            return getConversationId();
        }

        public final int component17() {
            return this.spamCategory;
        }

        public final boolean component18() {
            return this.isIM;
        }

        public final String component19() {
            return this.url;
        }

        public final String component2() {
            return this.type;
        }

        public final String component20() {
            return this.urlType;
        }

        public final String component21() {
            return this.dueCurrency;
        }

        public final C10582b component22() {
            return getActionState();
        }

        public final long component23() {
            return getMsgId();
        }

        public final DomainOrigin component24() {
            return getOrigin();
        }

        public final boolean component25() {
            return isSenderVerifiedForSmartFeatures();
        }

        public final String component26() {
            return getMessage();
        }

        public final String component3() {
            return this.dueInsType;
        }

        public final String component4() {
            return this.auxType;
        }

        public final String component5() {
            return this.billNum;
        }

        public final String component6() {
            return this.vendorName;
        }

        public final String component7() {
            return this.insNum;
        }

        public final String component8() {
            return this.dueAmt;
        }

        public final String component9() {
            return this.auxAmt;
        }

        public final Bill copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, p pVar, w3.b.a.b bVar, String str10, w3.b.a.b bVar2, String str11, String str12, long j, int i, boolean z, String str13, String str14, String str15, C10582b c10582b, long j2, DomainOrigin domainOrigin, boolean z2, String str16) {
            l.e(str, "billCategory");
            l.e(str2, "type");
            l.e(str3, "dueInsType");
            l.e(str4, "auxType");
            l.e(str5, "billNum");
            l.e(str6, "vendorName");
            l.e(str7, "insNum");
            l.e(str8, "dueAmt");
            l.e(str9, "auxAmt");
            l.e(str10, AnalyticsConstants.SENDER);
            l.e(bVar2, "msgDateTime");
            l.e(str11, "paymentStatus");
            l.e(str12, "location");
            l.e(str13, "url");
            l.e(str14, "urlType");
            l.e(str15, "dueCurrency");
            l.e(domainOrigin, "origin");
            l.e(str16, "message");
            return new Bill(str, str2, str3, str4, str5, str6, str7, str8, str9, pVar, bVar, str10, bVar2, str11, str12, j, i, z, str13, str14, str15, c10582b, j2, domainOrigin, z2, str16);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Bill)) {
                    return false;
                }
                Bill bill = (Bill) obj;
                return l.a(this.billCategory, bill.billCategory) && l.a(this.type, bill.type) && l.a(this.dueInsType, bill.dueInsType) && l.a(this.auxType, bill.auxType) && l.a(this.billNum, bill.billNum) && l.a(this.vendorName, bill.vendorName) && l.a(this.insNum, bill.insNum) && l.a(this.dueAmt, bill.dueAmt) && l.a(this.auxAmt, bill.auxAmt) && l.a(this.dueDate, bill.dueDate) && l.a(this.dueDateTime, bill.dueDateTime) && l.a(getSender(), bill.getSender()) && l.a(getMsgDateTime(), bill.getMsgDateTime()) && l.a(this.paymentStatus, bill.paymentStatus) && l.a(this.location, bill.location) && getConversationId() == bill.getConversationId() && this.spamCategory == bill.spamCategory && this.isIM == bill.isIM && l.a(this.url, bill.url) && l.a(this.urlType, bill.urlType) && l.a(this.dueCurrency, bill.dueCurrency) && l.a(getActionState(), bill.getActionState()) && getMsgId() == bill.getMsgId() && l.a(getOrigin(), bill.getOrigin()) && isSenderVerifiedForSmartFeatures() == bill.isSenderVerifiedForSmartFeatures() && l.a(getMessage(), bill.getMessage());
            }
            return true;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.actionState;
        }

        public final String getAuxAmt() {
            return this.auxAmt;
        }

        public final String getAuxType() {
            return this.auxType;
        }

        public final String getBillCategory() {
            return this.billCategory;
        }

        public final w3.b.a.b getBillDateTime() {
            return this.billDateTime;
        }

        public final w3.b.a.b getBillDueDateTime() {
            return this.billDueDateTime;
        }

        public final String getBillNum() {
            return this.billNum;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.conversationId;
        }

        public final String getDueAmt() {
            return this.dueAmt;
        }

        public final String getDueCurrency() {
            return this.dueCurrency;
        }

        public final p getDueDate() {
            return this.dueDate;
        }

        public final w3.b.a.b getDueDateTime() {
            return this.dueDateTime;
        }

        public final String getDueInsType() {
            return this.dueInsType;
        }

        public final String getInsNum() {
            return this.insNum;
        }

        public final String getLocation() {
            return this.location;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.message;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.msgDateTime;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.msgId;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.origin;
        }

        public final String getPaymentStatus() {
            return this.paymentStatus;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.sender;
        }

        public final int getSpamCategory() {
            return this.spamCategory;
        }

        public final String getType() {
            return this.type;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getUrlType() {
            return this.urlType;
        }

        public final String getVendorName() {
            return this.vendorName;
        }

        public int hashCode() {
            String str = this.billCategory;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.type;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.dueInsType;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.auxType;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.billNum;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.vendorName;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.insNum;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.dueAmt;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.auxAmt;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            p pVar = this.dueDate;
            int hashCode10 = pVar != null ? pVar.hashCode() : 0;
            w3.b.a.b bVar = this.dueDateTime;
            int hashCode11 = bVar != null ? bVar.hashCode() : 0;
            String sender = getSender();
            int hashCode12 = sender != null ? sender.hashCode() : 0;
            w3.b.a.b msgDateTime = getMsgDateTime();
            int hashCode13 = msgDateTime != null ? msgDateTime.hashCode() : 0;
            String str10 = this.paymentStatus;
            int hashCode14 = str10 != null ? str10.hashCode() : 0;
            String str11 = this.location;
            int hashCode15 = str11 != null ? str11.hashCode() : 0;
            int m34274a = C4876d.m34274a(getConversationId());
            int i2 = this.spamCategory;
            boolean z = this.isIM;
            int i3 = 1;
            int i4 = z ? 1 : 0;
            if (z) {
                i4 = 1;
            }
            String str12 = this.url;
            int hashCode16 = str12 != null ? str12.hashCode() : 0;
            String str13 = this.urlType;
            int hashCode17 = str13 != null ? str13.hashCode() : 0;
            String str14 = this.dueCurrency;
            int hashCode18 = str14 != null ? str14.hashCode() : 0;
            C10582b actionState = getActionState();
            int hashCode19 = actionState != null ? actionState.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(getMsgId());
            DomainOrigin origin = getOrigin();
            int hashCode20 = origin != null ? origin.hashCode() : 0;
            boolean isSenderVerifiedForSmartFeatures = isSenderVerifiedForSmartFeatures();
            if (!isSenderVerifiedForSmartFeatures) {
                i3 = isSenderVerifiedForSmartFeatures;
            }
            String message = getMessage();
            if (message != null) {
                i = message.hashCode();
            }
            return (((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + m34274a) * 31) + i2) * 31) + i4) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + hashCode19) * 31) + m34274a2) * 31) + hashCode20) * 31) + i3) * 31) + i;
        }

        public final boolean isIM() {
            return this.isIM;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.isSenderVerifiedForSmartFeatures;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Bill(billCategory=");
            m8728C.append(this.billCategory);
            m8728C.append(", type=");
            m8728C.append(this.type);
            m8728C.append(", dueInsType=");
            m8728C.append(this.dueInsType);
            m8728C.append(", auxType=");
            m8728C.append(this.auxType);
            m8728C.append(", billNum=");
            m8728C.append(this.billNum);
            m8728C.append(", vendorName=");
            m8728C.append(this.vendorName);
            m8728C.append(", insNum=");
            m8728C.append(this.insNum);
            m8728C.append(", dueAmt=");
            m8728C.append(this.dueAmt);
            m8728C.append(", auxAmt=");
            m8728C.append(this.auxAmt);
            m8728C.append(", dueDate=");
            m8728C.append(this.dueDate);
            m8728C.append(", dueDateTime=");
            m8728C.append(this.dueDateTime);
            m8728C.append(", sender=");
            m8728C.append(getSender());
            m8728C.append(", msgDateTime=");
            m8728C.append(getMsgDateTime());
            m8728C.append(", paymentStatus=");
            m8728C.append(this.paymentStatus);
            m8728C.append(", location=");
            m8728C.append(this.location);
            m8728C.append(", conversationId=");
            m8728C.append(getConversationId());
            m8728C.append(", spamCategory=");
            m8728C.append(this.spamCategory);
            m8728C.append(", isIM=");
            m8728C.append(this.isIM);
            m8728C.append(", url=");
            m8728C.append(this.url);
            m8728C.append(", urlType=");
            m8728C.append(this.urlType);
            m8728C.append(", dueCurrency=");
            m8728C.append(this.dueCurrency);
            m8728C.append(", actionState=");
            m8728C.append(getActionState());
            m8728C.append(", msgId=");
            m8728C.append(getMsgId());
            m8728C.append(", origin=");
            m8728C.append(getOrigin());
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(isSenderVerifiedForSmartFeatures());
            m8728C.append(", message=");
            m8728C.append(getMessage());
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0004R\u001c\u0010\u0016\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0004R\u001c\u0010\u0019\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u000e\u001a\u0004\b\u0018\u0010\u0004R\u001c\u0010\u001d\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007R\u001c\u0010 \u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u000e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010#\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001c\u0010'\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010\u000e\u001a\u0004\b&\u0010\u0004R\u001c\u0010)\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b(\u0010\"\u001a\u0004\b)\u0010$R\u001c\u0010/\u001a\u00020*8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001c\u00101\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010\u000e\u001a\u0004\b\u0017\u0010\u0004R\u001c\u00104\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b2\u0010\u000e\u001a\u0004\b3\u0010\u0004R\u001c\u00107\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b5\u0010\u000e\u001a\u0004\b6\u0010\u0004R\u001c\u00108\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010\u000e\u001a\u0004\b\u0011\u0010\u0004R\u001c\u0010;\u001a\u00020*8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b9\u0010,\u001a\u0004\b:\u0010.R\u001e\u0010A\u001a\u0004\u0018\u00010<8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001c\u0010C\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u000e\u001a\u0004\bB\u0010\u0004R\u001c\u0010D\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b%\u0010\u0004R\u001c\u0010J\u001a\u00020E8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR\u001c\u0010M\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bK\u0010\u000e\u001a\u0004\bL\u0010\u0004R\u001e\u0010S\u001a\u0004\u0018\u00010N8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u001c\u0010T\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u000e\u001a\u0004\b\r\u0010\u0004R\u001c\u0010W\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bU\u0010\u000e\u001a\u0004\bV\u0010\u0004R\u001c\u0010Z\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bX\u0010\u000e\u001a\u0004\bY\u0010\u0004R\u001c\u0010[\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010a\u001a\u00020\\8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`¨\u0006b"}, d2 = {"com/truecaller/insights/models/InsightsDomain$a", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "f", "trxCategory", "i", "d", "auxInstrVal", "o", "j", "vendorNorm", "g", "getVendor", "vendor", "t", "I", "getSpamCategory", "spamCategory", C22021b.f61237c, "h", "trxSubCategory", "u", "Z", "isIM", "()Z", "e", AbstractC2405c.f7629a, "auxInstr", "y", "isSenderVerifiedForSmartFeatures", "", "w", "J", "getMsgId", "()J", RemoteMessageConst.MSGID, "n", "trxCurrency", "q", "getSender", AnalyticsConstants.SENDER, "l", "getTotCrdLmt", "totCrdLmt", "trxType", "s", "getConversationId", "conversationId", "Le/a/c/r/j/b;", "v", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "getRefId", "refId", "trxAmt", "Lcom/truecaller/insights/models/DomainOrigin;", "x", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "z", "getMessage", "message", "Lw3/b/a/p;", "m", "Lw3/b/a/p;", "getDate", "()Lw3/b/a/p;", "date", "accNum", "p", "getLoc", "loc", "k", "getBalAmt", "balAmt", "accType", "Lw3/b/a/b;", "r", "Lw3/b/a/b;", "getMsgDateTime", "()Lw3/b/a/b;", "msgDateTime", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$a.class */
    public static final class C4057a extends InsightsDomain {
        @b("k")

        /* renamed from: a */
        private final String f12522a;
        @b("p")

        /* renamed from: b */
        private final String f12523b;
        @b(AbstractC2405c.f7629a)

        /* renamed from: c */
        private final String f12524c;
        @b("o")

        /* renamed from: d */
        private final String f12525d;
        @b("f")

        /* renamed from: e */
        private final String f12526e;
        @b("g")

        /* renamed from: f */
        private final String f12527f;
        @b("s")

        /* renamed from: g */
        private final String f12528g;
        @b("val1")

        /* renamed from: h */
        private final String f12529h;
        @b("val2")

        /* renamed from: i */
        private final String f12530i;
        @b("val3")

        /* renamed from: j */
        private final String f12531j;
        @b("val4")

        /* renamed from: k */
        private final String f12532k;
        @b("val5")

        /* renamed from: l */
        private final String f12533l;
        @b("date")

        /* renamed from: m */
        private final p f12534m;
        @b("dffVal1")

        /* renamed from: n */
        private final String f12535n;
        @b("dffVal2")

        /* renamed from: o */
        private final String f12536o;
        @b("dffVal3")

        /* renamed from: p */
        private final String f12537p;
        @b("address")

        /* renamed from: q */
        private final String f12538q;
        @b("msgdatetime")

        /* renamed from: r */
        private final w3.b.a.b f12539r;
        @b("conversation_id")

        /* renamed from: s */
        private final long f12540s;
        @b("spam_category")

        /* renamed from: t */
        private final int f12541t;
        @b("is_im")

        /* renamed from: u */
        private final boolean f12542u;

        /* renamed from: v */
        public final C10582b f12543v;

        /* renamed from: w */
        public final long f12544w;

        /* renamed from: x */
        public final DomainOrigin f12545x;

        /* renamed from: y */
        public final boolean f12546y;

        /* renamed from: z */
        public final String f12547z;

        public C4057a() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0L, 0, false, null, 0L, null, false, null, 67108863);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r23v1 */
        /* JADX WARN: Type inference failed for: r23v2 */
        /* JADX WARN: Type inference failed for: r23v3 */
        /* JADX WARN: Type inference failed for: r28v1 */
        /* JADX WARN: Type inference failed for: r28v2 */
        /* JADX WARN: Type inference failed for: r28v3 */
        public C4057a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, p pVar, String str13, String str14, String str15, String str16, w3.b.a.b bVar, long j, int i, boolean z, C10582b c10582b, long j2, DomainOrigin domainOrigin, boolean z2, String str17, int i2) {
            super("Bank", null);
            w3.b.a.b bVar2;
            String str18 = (i2 & 1) != 0 ? "" : str;
            String str19 = (i2 & 2) != 0 ? "" : str2;
            str3 = (i2 & 4) != 0 ? "" : str3;
            str4 = (i2 & 8) != 0 ? "" : str4;
            str5 = (i2 & 16) != 0 ? "" : str5;
            str6 = (i2 & 32) != 0 ? "" : str6;
            str7 = (i2 & 64) != 0 ? "" : str7;
            str8 = (i2 & 128) != 0 ? "" : str8;
            str9 = (i2 & 256) != 0 ? "" : str9;
            str10 = (i2 & 512) != 0 ? "" : str10;
            str11 = (i2 & 1024) != 0 ? "" : str11;
            str12 = (i2 & 2048) != 0 ? "" : str12;
            pVar = (i2 & 4096) != 0 ? null : pVar;
            str13 = (i2 & 8192) != 0 ? "" : str13;
            String str20 = (i2 & 16384) != 0 ? "" : str14;
            String str21 = (i2 & 32768) != 0 ? "" : str15;
            String str22 = (i2 & 65536) != 0 ? "" : str16;
            if ((i2 & 131072) != 0) {
                bVar2 = new w3.b.a.b();
                l.d(bVar2, "DateTime.now()");
            } else {
                bVar2 = bVar;
            }
            String str23 = str20;
            String str24 = str21;
            ?? r23 = (262144 & i2) != 0 ? -1 : j;
            i = (524288 & i2) != 0 ? 1 : i;
            z = (i2 & 1048576) != 0 ? false : z;
            ?? r28 = (i2 & 4194304) != 0 ? -1 : j2;
            DomainOrigin domainOrigin2 = (i2 & 8388608) != 0 ? DomainOrigin.SMS : null;
            z2 = (i2 & 16777216) != 0 ? false : z2;
            String str25 = (i2 & 33554432) != 0 ? "" : str17;
            l.e(str18, "trxCategory");
            l.e(str19, "trxSubCategory");
            l.e(str3, "trxType");
            l.e(str4, "accType");
            l.e(str5, "auxInstr");
            l.e(str6, "refId");
            l.e(str7, "vendor");
            l.e(str8, "accNum");
            l.e(str9, "auxInstrVal");
            l.e(str10, "trxAmt");
            l.e(str11, "balAmt");
            l.e(str12, "totCrdLmt");
            l.e(str13, "trxCurrency");
            l.e(str23, "vendorNorm");
            l.e(str24, "loc");
            l.e(str22, AnalyticsConstants.SENDER);
            l.e(bVar2, "msgDateTime");
            l.e(domainOrigin2, "origin");
            l.e(str25, "message");
            this.f12522a = str18;
            this.f12523b = str19;
            this.f12524c = str3;
            this.f12525d = str4;
            this.f12526e = str5;
            this.f12527f = str6;
            this.f12528g = str7;
            this.f12529h = str8;
            this.f12530i = str9;
            this.f12531j = str10;
            this.f12532k = str11;
            this.f12533l = str12;
            this.f12534m = pVar;
            this.f12535n = str13;
            this.f12536o = str23;
            this.f12537p = str24;
            this.f12538q = str22;
            this.f12539r = bVar2;
            this.f12540s = r23;
            this.f12541t = i;
            this.f12542u = z;
            this.f12543v = null;
            this.f12544w = r28;
            this.f12545x = domainOrigin2;
            this.f12546y = z2;
            this.f12547z = str25;
        }

        /* renamed from: a */
        public final String m35264a() {
            return this.f12529h;
        }

        /* renamed from: b */
        public final String m35263b() {
            return this.f12525d;
        }

        /* renamed from: c */
        public final String m35262c() {
            return this.f12526e;
        }

        /* renamed from: d */
        public final String m35261d() {
            return this.f12530i;
        }

        /* renamed from: e */
        public final String m35260e() {
            return this.f12531j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4057a)) {
                    return false;
                }
                C4057a c4057a = (C4057a) obj;
                return l.a(this.f12522a, c4057a.f12522a) && l.a(this.f12523b, c4057a.f12523b) && l.a(this.f12524c, c4057a.f12524c) && l.a(this.f12525d, c4057a.f12525d) && l.a(this.f12526e, c4057a.f12526e) && l.a(this.f12527f, c4057a.f12527f) && l.a(this.f12528g, c4057a.f12528g) && l.a(this.f12529h, c4057a.f12529h) && l.a(this.f12530i, c4057a.f12530i) && l.a(this.f12531j, c4057a.f12531j) && l.a(this.f12532k, c4057a.f12532k) && l.a(this.f12533l, c4057a.f12533l) && l.a(this.f12534m, c4057a.f12534m) && l.a(this.f12535n, c4057a.f12535n) && l.a(this.f12536o, c4057a.f12536o) && l.a(this.f12537p, c4057a.f12537p) && l.a(this.f12538q, c4057a.f12538q) && l.a(this.f12539r, c4057a.f12539r) && this.f12540s == c4057a.f12540s && this.f12541t == c4057a.f12541t && this.f12542u == c4057a.f12542u && l.a(this.f12543v, c4057a.f12543v) && this.f12544w == c4057a.f12544w && l.a(this.f12545x, c4057a.f12545x) && this.f12546y == c4057a.f12546y && l.a(this.f12547z, c4057a.f12547z);
            }
            return true;
        }

        /* renamed from: f */
        public final String m35259f() {
            return this.f12522a;
        }

        /* renamed from: g */
        public final String m35258g() {
            return this.f12535n;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12543v;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12540s;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12547z;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12539r;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12544w;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12545x;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12538q;
        }

        public final int getSpamCategory() {
            return this.f12541t;
        }

        /* renamed from: h */
        public final String m35257h() {
            return this.f12523b;
        }

        public int hashCode() {
            String str = this.f12522a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f12523b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f12524c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f12525d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f12526e;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f12527f;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f12528g;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f12529h;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f12530i;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            String str10 = this.f12531j;
            int hashCode10 = str10 != null ? str10.hashCode() : 0;
            String str11 = this.f12532k;
            int hashCode11 = str11 != null ? str11.hashCode() : 0;
            String str12 = this.f12533l;
            int hashCode12 = str12 != null ? str12.hashCode() : 0;
            p pVar = this.f12534m;
            int hashCode13 = pVar != null ? pVar.hashCode() : 0;
            String str13 = this.f12535n;
            int hashCode14 = str13 != null ? str13.hashCode() : 0;
            String str14 = this.f12536o;
            int hashCode15 = str14 != null ? str14.hashCode() : 0;
            String str15 = this.f12537p;
            int hashCode16 = str15 != null ? str15.hashCode() : 0;
            String str16 = this.f12538q;
            int hashCode17 = str16 != null ? str16.hashCode() : 0;
            w3.b.a.b bVar = this.f12539r;
            int hashCode18 = bVar != null ? bVar.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12540s);
            int i2 = this.f12541t;
            boolean z = this.f12542u;
            int i3 = 1;
            int i4 = z ? 1 : 0;
            if (z) {
                i4 = 1;
            }
            C10582b c10582b = this.f12543v;
            int hashCode19 = c10582b != null ? c10582b.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f12544w);
            DomainOrigin domainOrigin = this.f12545x;
            int hashCode20 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12546y;
            if (!z2) {
                i3 = z2 ? 1 : 0;
            }
            String str17 = this.f12547z;
            if (str17 != null) {
                i = str17.hashCode();
            }
            return (((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + m34274a) * 31) + i2) * 31) + i4) * 31) + hashCode19) * 31) + m34274a2) * 31) + hashCode20) * 31) + i3) * 31) + i;
        }

        /* renamed from: i */
        public final String m35256i() {
            return this.f12524c;
        }

        public final boolean isIM() {
            return this.f12542u;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12546y;
        }

        /* renamed from: j */
        public final String m35255j() {
            return this.f12536o;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Bank(trxCategory=");
            m8728C.append(this.f12522a);
            m8728C.append(", trxSubCategory=");
            m8728C.append(this.f12523b);
            m8728C.append(", trxType=");
            m8728C.append(this.f12524c);
            m8728C.append(", accType=");
            m8728C.append(this.f12525d);
            m8728C.append(", auxInstr=");
            m8728C.append(this.f12526e);
            m8728C.append(", refId=");
            m8728C.append(this.f12527f);
            m8728C.append(", vendor=");
            m8728C.append(this.f12528g);
            m8728C.append(", accNum=");
            m8728C.append(this.f12529h);
            m8728C.append(", auxInstrVal=");
            m8728C.append(this.f12530i);
            m8728C.append(", trxAmt=");
            m8728C.append(this.f12531j);
            m8728C.append(", balAmt=");
            m8728C.append(this.f12532k);
            m8728C.append(", totCrdLmt=");
            m8728C.append(this.f12533l);
            m8728C.append(", date=");
            m8728C.append(this.f12534m);
            m8728C.append(", trxCurrency=");
            m8728C.append(this.f12535n);
            m8728C.append(", vendorNorm=");
            m8728C.append(this.f12536o);
            m8728C.append(", loc=");
            m8728C.append(this.f12537p);
            m8728C.append(", sender=");
            m8728C.append(this.f12538q);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12539r);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12540s);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f12541t);
            m8728C.append(", isIM=");
            m8728C.append(this.f12542u);
            m8728C.append(", actionState=");
            m8728C.append(this.f12543v);
            m8728C.append(", msgId=");
            m8728C.append(this.f12544w);
            m8728C.append(", origin=");
            m8728C.append(this.f12545x);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12546y);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f12547z, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\\\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\b\u0018��2\u00020\u0001BÝ\u0001\u0012\b\u0010.\u001a\u0004\u0018\u00010*\u0012\b\u00103\u001a\u0004\u0018\u00010/\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002\u0012\b\b\u0002\u0010'\u001a\u00020\u0002\u0012\b\b\u0002\u0010)\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\b\b\u0002\u00105\u001a\u00020\u0002\u0012\b\u0010?\u001a\u0004\u0018\u00010;\u0012\b\b\u0002\u0010:\u001a\u00020\u0002\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010 \u0012\b\b\u0002\u00107\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010E\u001a\u00020@\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010\\\u001a\u00020 \u0012\b\b\u0002\u0010H\u001a\u00020@\u0012\b\b\u0002\u0010\u0013\u001a\u00020\n\u0012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010I\u0012\b\b\u0002\u0010T\u001a\u00020O\u0012\b\b\u0002\u0010V\u001a\u00020\n\u0012\b\b\u0002\u0010Y\u001a\u00020\u0002¢\u0006\u0004\b]\u0010^J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0017\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0004R\"\u0010\u001c\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u000e\u001a\u0004\b\u0019\u0010\u0004\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u000e\u001a\u0004\b\u001e\u0010\u0004R\u001e\u0010$\u001a\u0004\u0018\u00010 8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u001d\u0010#R\u001c\u0010'\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010\u000e\u001a\u0004\b&\u0010\u0004R\u001c\u0010)\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010\u000e\u001a\u0004\b%\u0010\u0004R\u001e\u0010.\u001a\u0004\u0018\u00010*8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b(\u0010-R\u001e\u00103\u001a\u0004\u0018\u00010/8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b\u0015\u00102R\u001c\u00105\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b4\u0010\u000e\u001a\u0004\b4\u0010\u0004R\u001c\u00107\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b6\u0010\u000e\u001a\u0004\b0\u0010\u0004R\u001c\u0010:\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b8\u0010\u000e\u001a\u0004\b9\u0010\u0004R\u001e\u0010?\u001a\u0004\u0018\u00010;8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b<\u0010>R\u001c\u0010E\u001a\u00020@8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u001c\u0010H\u001a\u00020@8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\bF\u0010B\u001a\u0004\bG\u0010DR\u001e\u0010N\u001a\u0004\u0018\u00010I8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\u001c\u0010T\u001a\u00020O8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u001c\u0010V\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bU\u0010\u0012\u001a\u0004\bV\u0010\u0014R\u001c\u0010Y\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bW\u0010\u000e\u001a\u0004\bX\u0010\u0004R\u001c\u0010\\\u001a\u00020 8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\bZ\u0010\"\u001a\u0004\b[\u0010#¨\u0006_"}, d2 = {"com/truecaller/insights/models/InsightsDomain$b", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "l", "Ljava/lang/String;", "getLocation", "location", "q", "Z", "isIM", "()Z", "f", "getOrderAmount", "orderAmount", "n", "getSender", "setSender", "(Ljava/lang/String;)V", AnalyticsConstants.SENDER, AbstractC2405c.f7629a, "getOrderId", "orderId", "Lw3/b/a/b;", "j", "Lw3/b/a/b;", "()Lw3/b/a/b;", "dateTime", "d", "getTrackingId", "trackingId", "e", "orderItem", "Lcom/truecaller/insights/binders/utils/OrderStatus;", "a", "Lcom/truecaller/insights/binders/utils/OrderStatus;", "()Lcom/truecaller/insights/binders/utils/OrderStatus;", "orderStatus", "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;", C22021b.f61237c, "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;", "()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;", "orderSubStatus", "g", "teleNum", "k", "agentPin", "i", "getUrl", "url", "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;", "h", "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;", "()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;", "urlType", "", "m", "J", "getMsgId", "()J", RemoteMessageConst.MSGID, "p", "getConversationId", "conversationId", "Le/a/c/r/j/b;", "r", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "Lcom/truecaller/insights/models/DomainOrigin;", "s", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "t", "isSenderVerifiedForSmartFeatures", "u", "getMessage", "message", "o", "getMsgDateTime", "msgDateTime", "<init>", "(Lcom/truecaller/insights/binders/utils/OrderStatus;Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lw3/b/a/b;JZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$b.class */
    public static final class C4058b extends InsightsDomain {
        @b("k")

        /* renamed from: a */
        private final OrderStatus f12548a;
        @b("p")

        /* renamed from: b */
        private final DeliverySchemaRuleHelper.OrderSubStatus f12549b;
        @b("o")

        /* renamed from: c */
        private final String f12550c;
        @b("f")

        /* renamed from: d */
        private final String f12551d;
        @b("s")

        /* renamed from: e */
        private final String f12552e;
        @b("val3")

        /* renamed from: f */
        private final String f12553f;
        @b("dffVal4")

        /* renamed from: g */
        private final String f12554g;
        @b(AbstractC2405c.f7629a)

        /* renamed from: h */
        private final DeliverySchemaRuleHelper.UrlTypes f12555h;
        @b("dffVal5")

        /* renamed from: i */
        private final String f12556i;
        @b("datetime")

        /* renamed from: j */
        private final w3.b.a.b f12557j;
        @b("val1")

        /* renamed from: k */
        private final String f12558k;
        @b("val2")

        /* renamed from: l */
        private final String f12559l;
        @b("messageID")

        /* renamed from: m */
        private final long f12560m;
        @b("address")

        /* renamed from: n */
        private String f12561n;
        @b("msgdatetime")

        /* renamed from: o */
        private final w3.b.a.b f12562o;
        @b("conversation_id")

        /* renamed from: p */
        private final long f12563p;
        @b("is_im")

        /* renamed from: q */
        private final boolean f12564q;

        /* renamed from: r */
        public final C10582b f12565r;

        /* renamed from: s */
        public final DomainOrigin f12566s;

        /* renamed from: t */
        public final boolean f12567t;

        /* renamed from: u */
        public final String f12568u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4058b(OrderStatus orderStatus, DeliverySchemaRuleHelper.OrderSubStatus orderSubStatus, String str, String str2, String str3, String str4, String str5, DeliverySchemaRuleHelper.UrlTypes urlTypes, String str6, w3.b.a.b bVar, String str7, String str8, long j, String str9, w3.b.a.b bVar2, long j2, boolean z, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str10) {
            super("Delivery", null);
            l.e(str, "orderId");
            l.e(str2, "trackingId");
            l.e(str3, "orderItem");
            l.e(str4, "orderAmount");
            l.e(str5, "teleNum");
            l.e(str6, "url");
            l.e(str7, "agentPin");
            l.e(str8, "location");
            l.e(str9, AnalyticsConstants.SENDER);
            l.e(bVar2, "msgDateTime");
            l.e(domainOrigin, "origin");
            l.e(str10, "message");
            this.f12548a = orderStatus;
            this.f12549b = orderSubStatus;
            this.f12550c = str;
            this.f12551d = str2;
            this.f12552e = str3;
            this.f12553f = str4;
            this.f12554g = str5;
            this.f12555h = urlTypes;
            this.f12556i = str6;
            this.f12557j = bVar;
            this.f12558k = str7;
            this.f12559l = str8;
            this.f12560m = j;
            this.f12561n = str9;
            this.f12562o = bVar2;
            this.f12563p = j2;
            this.f12564q = z;
            this.f12565r = c10582b;
            this.f12566s = domainOrigin;
            this.f12567t = z2;
            this.f12568u = str10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v72, types: [long] */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r39v1 */
        /* JADX WARN: Type inference failed for: r39v2 */
        /* JADX WARN: Type inference failed for: r39v3 */
        /* JADX WARN: Type inference failed for: r43v1 */
        /* JADX WARN: Type inference failed for: r43v2 */
        /* JADX WARN: Type inference failed for: r43v3 */
        /* renamed from: a */
        public static C4058b m35254a(C4058b c4058b, OrderStatus orderStatus, DeliverySchemaRuleHelper.OrderSubStatus orderSubStatus, String str, String str2, String str3, String str4, String str5, DeliverySchemaRuleHelper.UrlTypes urlTypes, String str6, w3.b.a.b bVar, String str7, String str8, long j, String str9, w3.b.a.b bVar2, long j2, boolean z, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str10, int i) {
            OrderStatus orderStatus2 = (i & 1) != 0 ? c4058b.f12548a : null;
            DeliverySchemaRuleHelper.OrderSubStatus orderSubStatus2 = (i & 2) != 0 ? c4058b.f12549b : null;
            String str11 = (i & 4) != 0 ? c4058b.f12550c : null;
            String str12 = (i & 8) != 0 ? c4058b.f12551d : null;
            String str13 = (i & 16) != 0 ? c4058b.f12552e : null;
            String str14 = (i & 32) != 0 ? c4058b.f12553f : null;
            String str15 = (i & 64) != 0 ? c4058b.f12554g : null;
            DeliverySchemaRuleHelper.UrlTypes urlTypes2 = (i & 128) != 0 ? c4058b.f12555h : null;
            String str16 = (i & 256) != 0 ? c4058b.f12556i : null;
            w3.b.a.b bVar3 = (i & 512) != 0 ? c4058b.f12557j : null;
            String str17 = (i & 1024) != 0 ? c4058b.f12558k : null;
            String str18 = (i & 2048) != 0 ? c4058b.f12559l : null;
            ?? r39 = j;
            if ((i & 4096) != 0) {
                r39 = c4058b.f12560m;
            }
            String str19 = (i & 8192) != 0 ? c4058b.f12561n : null;
            w3.b.a.b bVar4 = (i & 16384) != 0 ? c4058b.f12562o : null;
            ?? r43 = j2;
            if ((32768 & i) != 0) {
                r43 = c4058b.f12563p;
            }
            if ((i & 65536) != 0) {
                z = c4058b.f12564q;
            }
            w3.b.a.b bVar5 = bVar4;
            C10582b c10582b2 = (i & 131072) != 0 ? c4058b.f12565r : null;
            DomainOrigin domainOrigin2 = (i & 262144) != 0 ? c4058b.f12566s : null;
            if ((i & 524288) != 0) {
                z2 = c4058b.f12567t;
            }
            String str20 = (i & 1048576) != 0 ? c4058b.f12568u : null;
            Objects.requireNonNull(c4058b);
            l.e(str11, "orderId");
            l.e(str12, "trackingId");
            l.e(str13, "orderItem");
            l.e(str14, "orderAmount");
            l.e(str15, "teleNum");
            l.e(str16, "url");
            l.e(str17, "agentPin");
            l.e(str18, "location");
            l.e(str19, AnalyticsConstants.SENDER);
            l.e(bVar5, "msgDateTime");
            l.e(domainOrigin2, "origin");
            l.e(str20, "message");
            return new C4058b(orderStatus2, orderSubStatus2, str11, str12, str13, str14, str15, urlTypes2, str16, bVar3, str17, str18, r39, str19, bVar5, r43, z, c10582b2, domainOrigin2, z2, str20);
        }

        /* renamed from: b */
        public final String m35253b() {
            return this.f12558k;
        }

        /* renamed from: c */
        public final w3.b.a.b m35252c() {
            return this.f12557j;
        }

        /* renamed from: d */
        public final String m35251d() {
            return this.f12552e;
        }

        /* renamed from: e */
        public final OrderStatus m35250e() {
            return this.f12548a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4058b)) {
                    return false;
                }
                C4058b c4058b = (C4058b) obj;
                return l.a(this.f12548a, c4058b.f12548a) && l.a(this.f12549b, c4058b.f12549b) && l.a(this.f12550c, c4058b.f12550c) && l.a(this.f12551d, c4058b.f12551d) && l.a(this.f12552e, c4058b.f12552e) && l.a(this.f12553f, c4058b.f12553f) && l.a(this.f12554g, c4058b.f12554g) && l.a(this.f12555h, c4058b.f12555h) && l.a(this.f12556i, c4058b.f12556i) && l.a(this.f12557j, c4058b.f12557j) && l.a(this.f12558k, c4058b.f12558k) && l.a(this.f12559l, c4058b.f12559l) && this.f12560m == c4058b.f12560m && l.a(this.f12561n, c4058b.f12561n) && l.a(this.f12562o, c4058b.f12562o) && this.f12563p == c4058b.f12563p && this.f12564q == c4058b.f12564q && l.a(this.f12565r, c4058b.f12565r) && l.a(this.f12566s, c4058b.f12566s) && this.f12567t == c4058b.f12567t && l.a(this.f12568u, c4058b.f12568u);
            }
            return true;
        }

        /* renamed from: f */
        public final DeliverySchemaRuleHelper.OrderSubStatus m35249f() {
            return this.f12549b;
        }

        /* renamed from: g */
        public final String m35248g() {
            return this.f12554g;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12565r;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12563p;
        }

        public final String getLocation() {
            return this.f12559l;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12568u;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12562o;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12560m;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12566s;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12561n;
        }

        public final String getUrl() {
            return this.f12556i;
        }

        /* renamed from: h */
        public final DeliverySchemaRuleHelper.UrlTypes m35247h() {
            return this.f12555h;
        }

        public int hashCode() {
            OrderStatus orderStatus = this.f12548a;
            int i = 0;
            int hashCode = orderStatus != null ? orderStatus.hashCode() : 0;
            DeliverySchemaRuleHelper.OrderSubStatus orderSubStatus = this.f12549b;
            int hashCode2 = orderSubStatus != null ? orderSubStatus.hashCode() : 0;
            String str = this.f12550c;
            int hashCode3 = str != null ? str.hashCode() : 0;
            String str2 = this.f12551d;
            int hashCode4 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f12552e;
            int hashCode5 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f12553f;
            int hashCode6 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f12554g;
            int hashCode7 = str5 != null ? str5.hashCode() : 0;
            DeliverySchemaRuleHelper.UrlTypes urlTypes = this.f12555h;
            int hashCode8 = urlTypes != null ? urlTypes.hashCode() : 0;
            String str6 = this.f12556i;
            int hashCode9 = str6 != null ? str6.hashCode() : 0;
            w3.b.a.b bVar = this.f12557j;
            int hashCode10 = bVar != null ? bVar.hashCode() : 0;
            String str7 = this.f12558k;
            int hashCode11 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f12559l;
            int hashCode12 = str8 != null ? str8.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12560m);
            String str9 = this.f12561n;
            int hashCode13 = str9 != null ? str9.hashCode() : 0;
            w3.b.a.b bVar2 = this.f12562o;
            int hashCode14 = bVar2 != null ? bVar2.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f12563p);
            boolean z = this.f12564q;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            C10582b c10582b = this.f12565r;
            int hashCode15 = c10582b != null ? c10582b.hashCode() : 0;
            DomainOrigin domainOrigin = this.f12566s;
            int hashCode16 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12567t;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            String str10 = this.f12568u;
            if (str10 != null) {
                i = str10.hashCode();
            }
            return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + m34274a) * 31) + hashCode13) * 31) + hashCode14) * 31) + m34274a2) * 31) + i3) * 31) + hashCode15) * 31) + hashCode16) * 31) + i2) * 31) + i;
        }

        public final boolean isIM() {
            return this.f12564q;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12567t;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Delivery(orderStatus=");
            m8728C.append(this.f12548a);
            m8728C.append(", orderSubStatus=");
            m8728C.append(this.f12549b);
            m8728C.append(", orderId=");
            m8728C.append(this.f12550c);
            m8728C.append(", trackingId=");
            m8728C.append(this.f12551d);
            m8728C.append(", orderItem=");
            m8728C.append(this.f12552e);
            m8728C.append(", orderAmount=");
            m8728C.append(this.f12553f);
            m8728C.append(", teleNum=");
            m8728C.append(this.f12554g);
            m8728C.append(", urlType=");
            m8728C.append(this.f12555h);
            m8728C.append(", url=");
            m8728C.append(this.f12556i);
            m8728C.append(", dateTime=");
            m8728C.append(this.f12557j);
            m8728C.append(", agentPin=");
            m8728C.append(this.f12558k);
            m8728C.append(", location=");
            m8728C.append(this.f12559l);
            m8728C.append(", msgId=");
            m8728C.append(this.f12560m);
            m8728C.append(", sender=");
            m8728C.append(this.f12561n);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12562o);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12563p);
            m8728C.append(", isIM=");
            m8728C.append(this.f12564q);
            m8728C.append(", actionState=");
            m8728C.append(this.f12565r);
            m8728C.append(", origin=");
            m8728C.append(this.f12566s);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12567t);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f12568u, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u0010\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u001a\u001a\u00020\u00158\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001d\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u001c\u0010\u0004R\u001c\u0010 \u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u000e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010&\u001a\u00020!8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001c\u0010(\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010\u0012\u001a\u0004\b(\u0010\u0014R\u001c\u0010+\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b)\u0010\u000e\u001a\u0004\b*\u0010\u0004R\u001c\u0010.\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b,\u0010\u000e\u001a\u0004\b-\u0010\u0004R\u001c\u00104\u001a\u00020/8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001c\u00105\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u000e\u001a\u0004\b\u001b\u0010\u0004R\u001e\u0010;\u001a\u0004\u0018\u0001068\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u001c\u0010>\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b<\u0010\u000e\u001a\u0004\b=\u0010\u0004R\u001e\u0010?\u001a\u0004\u0018\u00010\u00158\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b)\u0010\u0019R\u001c\u0010@\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010\u000e\u001a\u0004\b<\u0010\u0004R\u001c\u0010C\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bA\u0010\u000e\u001a\u0004\bB\u0010\u0004R\u001c\u0010E\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bD\u0010\u000e\u001a\u0004\bD\u0010\u0004R\u001c\u0010H\u001a\u00020!8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\bF\u0010#\u001a\u0004\bG\u0010%¨\u0006I"}, d2 = {"com/truecaller/insights/models/InsightsDomain$c", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "k", "Ljava/lang/String;", "getSender", AnalyticsConstants.SENDER, "q", "Z", "isSenderVerifiedForSmartFeatures", "()Z", "Lw3/b/a/b;", "l", "Lw3/b/a/b;", "getMsgDateTime", "()Lw3/b/a/b;", "msgDateTime", "a", "e", "eventType", "h", "g", "secretCode", "", "m", "J", "getConversationId", "()J", "conversationId", "n", "isIM", C22021b.f61237c, AbstractC2405c.f7629a, "eventStatus", "i", "getUrl", "url", "Lcom/truecaller/insights/models/DomainOrigin;", "p", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "bookingId", "Le/a/c/r/j/b;", "o", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "d", "getLocation", "location", "dateTime", "eventSubStatus", "r", "getMessage", "message", "f", AnalyticsConstants.NAME, "j", "getMsgId", RemoteMessageConst.MSGID, "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$c.class */
    public static final class C4059c extends InsightsDomain {
        @b("k")

        /* renamed from: a */
        private final String f12569a;
        @b("p")

        /* renamed from: b */
        private final String f12570b;
        @b(AbstractC2405c.f7629a)

        /* renamed from: c */
        private final String f12571c;
        @b("o")

        /* renamed from: d */
        private final String f12572d;
        @b("g")

        /* renamed from: e */
        private final String f12573e;
        @b("s")

        /* renamed from: f */
        private final String f12574f;
        @b("datetime")

        /* renamed from: g */
        private final w3.b.a.b f12575g;
        @b("val3")

        /* renamed from: h */
        private final String f12576h;
        @b("dff_val5")

        /* renamed from: i */
        private final String f12577i;
        @b("messageID")

        /* renamed from: j */
        private final long f12578j;
        @b("address")

        /* renamed from: k */
        private final String f12579k;
        @b("msgdatetime")

        /* renamed from: l */
        private final w3.b.a.b f12580l;
        @b("conversation_id")

        /* renamed from: m */
        private final long f12581m;
        @b("is_im")

        /* renamed from: n */
        private final boolean f12582n;

        /* renamed from: o */
        public final C10582b f12583o;

        /* renamed from: p */
        public final DomainOrigin f12584p;

        /* renamed from: q */
        public final boolean f12585q;

        /* renamed from: r */
        public final String f12586r;

        public C4059c() {
            this(null, null, null, null, null, null, null, null, null, 0L, null, null, 0L, false, null, null, false, null, 262143);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v2 */
        /* JADX WARN: Type inference failed for: r18v3 */
        public C4059c(String str, String str2, String str3, String str4, String str5, String str6, w3.b.a.b bVar, String str7, String str8, long j, String str9, w3.b.a.b bVar2, long j2, boolean z, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str10, int i) {
            super("Event", null);
            str = (i & 1) != 0 ? "" : str;
            str2 = (i & 2) != 0 ? "" : str2;
            str3 = (i & 4) != 0 ? "" : str3;
            str4 = (i & 8) != 0 ? "" : str4;
            str5 = (i & 16) != 0 ? "" : str5;
            str6 = (i & 32) != 0 ? "" : str6;
            bVar = (i & 64) != 0 ? null : bVar;
            str7 = (i & 128) != 0 ? "" : str7;
            str8 = (i & 256) != 0 ? "" : str8;
            ?? r14 = (i & 512) != 0 ? -1 : j;
            str9 = (i & 1024) != 0 ? "" : str9;
            if ((i & 2048) != 0) {
                bVar2 = new w3.b.a.b();
                l.d(bVar2, "DateTime.now()");
            }
            ?? r18 = (i & 4096) != 0 ? -1 : j2;
            z = (i & 8192) != 0 ? false : z;
            DomainOrigin domainOrigin2 = (32768 & i) != 0 ? DomainOrigin.SMS : null;
            z2 = (i & 65536) != 0 ? false : z2;
            str10 = (i & 131072) != 0 ? "" : str10;
            l.e(str, "eventType");
            l.e(str2, "eventStatus");
            l.e(str3, "eventSubStatus");
            l.e(str4, "location");
            l.e(str5, "bookingId");
            l.e(str6, AnalyticsConstants.NAME);
            l.e(str7, "secretCode");
            l.e(str8, "url");
            l.e(str9, AnalyticsConstants.SENDER);
            l.e(bVar2, "msgDateTime");
            l.e(domainOrigin2, "origin");
            l.e(str10, "message");
            this.f12569a = str;
            this.f12570b = str2;
            this.f12571c = str3;
            this.f12572d = str4;
            this.f12573e = str5;
            this.f12574f = str6;
            this.f12575g = bVar;
            this.f12576h = str7;
            this.f12577i = str8;
            this.f12578j = r14;
            this.f12579k = str9;
            this.f12580l = bVar2;
            this.f12581m = r18;
            this.f12582n = z;
            this.f12583o = null;
            this.f12584p = domainOrigin2;
            this.f12585q = z2;
            this.f12586r = str10;
        }

        /* renamed from: a */
        public final String m35246a() {
            return this.f12573e;
        }

        /* renamed from: b */
        public final w3.b.a.b m35245b() {
            return this.f12575g;
        }

        /* renamed from: c */
        public final String m35244c() {
            return this.f12570b;
        }

        /* renamed from: d */
        public final String m35243d() {
            return this.f12571c;
        }

        /* renamed from: e */
        public final String m35242e() {
            return this.f12569a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4059c)) {
                    return false;
                }
                C4059c c4059c = (C4059c) obj;
                return l.a(this.f12569a, c4059c.f12569a) && l.a(this.f12570b, c4059c.f12570b) && l.a(this.f12571c, c4059c.f12571c) && l.a(this.f12572d, c4059c.f12572d) && l.a(this.f12573e, c4059c.f12573e) && l.a(this.f12574f, c4059c.f12574f) && l.a(this.f12575g, c4059c.f12575g) && l.a(this.f12576h, c4059c.f12576h) && l.a(this.f12577i, c4059c.f12577i) && this.f12578j == c4059c.f12578j && l.a(this.f12579k, c4059c.f12579k) && l.a(this.f12580l, c4059c.f12580l) && this.f12581m == c4059c.f12581m && this.f12582n == c4059c.f12582n && l.a(this.f12583o, c4059c.f12583o) && l.a(this.f12584p, c4059c.f12584p) && this.f12585q == c4059c.f12585q && l.a(this.f12586r, c4059c.f12586r);
            }
            return true;
        }

        /* renamed from: f */
        public final String m35241f() {
            return this.f12574f;
        }

        /* renamed from: g */
        public final String m35240g() {
            return this.f12576h;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12583o;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12581m;
        }

        public final String getLocation() {
            return this.f12572d;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12586r;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12580l;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12578j;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12584p;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12579k;
        }

        public int hashCode() {
            String str = this.f12569a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f12570b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f12571c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f12572d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f12573e;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f12574f;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            w3.b.a.b bVar = this.f12575g;
            int hashCode7 = bVar != null ? bVar.hashCode() : 0;
            String str7 = this.f12576h;
            int hashCode8 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f12577i;
            int hashCode9 = str8 != null ? str8.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12578j);
            String str9 = this.f12579k;
            int hashCode10 = str9 != null ? str9.hashCode() : 0;
            w3.b.a.b bVar2 = this.f12580l;
            int hashCode11 = bVar2 != null ? bVar2.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f12581m);
            boolean z = this.f12582n;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            C10582b c10582b = this.f12583o;
            int hashCode12 = c10582b != null ? c10582b.hashCode() : 0;
            DomainOrigin domainOrigin = this.f12584p;
            int hashCode13 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12585q;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            String str10 = this.f12586r;
            if (str10 != null) {
                i = str10.hashCode();
            }
            return (((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + m34274a) * 31) + hashCode10) * 31) + hashCode11) * 31) + m34274a2) * 31) + i3) * 31) + hashCode12) * 31) + hashCode13) * 31) + i2) * 31) + i;
        }

        public final boolean isIM() {
            return this.f12582n;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12585q;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Event(eventType=");
            m8728C.append(this.f12569a);
            m8728C.append(", eventStatus=");
            m8728C.append(this.f12570b);
            m8728C.append(", eventSubStatus=");
            m8728C.append(this.f12571c);
            m8728C.append(", location=");
            m8728C.append(this.f12572d);
            m8728C.append(", bookingId=");
            m8728C.append(this.f12573e);
            m8728C.append(", name=");
            m8728C.append(this.f12574f);
            m8728C.append(", dateTime=");
            m8728C.append(this.f12575g);
            m8728C.append(", secretCode=");
            m8728C.append(this.f12576h);
            m8728C.append(", url=");
            m8728C.append(this.f12577i);
            m8728C.append(", msgId=");
            m8728C.append(this.f12578j);
            m8728C.append(", sender=");
            m8728C.append(this.f12579k);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12580l);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12581m);
            m8728C.append(", isIM=");
            m8728C.append(this.f12582n);
            m8728C.append(", actionState=");
            m8728C.append(this.f12583o);
            m8728C.append(", origin=");
            m8728C.append(this.f12584p);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12585q);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f12586r, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0018\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u000e\u001a\u0004\b\u0018\u0010\u0010R\u001c\u0010\u001e\u001a\u00020\u00198\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010!\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010$\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\"\u0010 \u001a\u0004\b#\u0010\u0004R\u001c\u0010*\u001a\u00020%8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001c\u00100\u001a\u00020+8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001c\u00103\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b1\u0010 \u001a\u0004\b2\u0010\u0004R\u001c\u00106\u001a\u00020\u00198\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b4\u0010\u001b\u001a\u0004\b5\u0010\u001d¨\u00067"}, d2 = {"com/truecaller/insights/models/InsightsDomain$d", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "f", "Z", "isIM", "()Z", "Le/a/c/r/j/b;", "g", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "i", "isSenderVerifiedForSmartFeatures", "", C22021b.f61237c, "J", "getMsgId", "()J", RemoteMessageConst.MSGID, "a", "Ljava/lang/String;", "notifCategory", "j", "getMessage", "message", "Lw3/b/a/b;", "d", "Lw3/b/a/b;", "getMsgDateTime", "()Lw3/b/a/b;", "msgDateTime", "Lcom/truecaller/insights/models/DomainOrigin;", "h", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", AbstractC2405c.f7629a, "getSender", AnalyticsConstants.SENDER, "e", "getConversationId", "conversationId", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$d */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$d.class */
    public static final class C4060d extends InsightsDomain {
        @b("k")

        /* renamed from: a */
        private final String f12587a;
        @b("messageID")

        /* renamed from: b */
        private final long f12588b;
        @b("address")

        /* renamed from: c */
        private final String f12589c;
        @b("msgdatetime")

        /* renamed from: d */
        private final w3.b.a.b f12590d;
        @b("conversation_id")

        /* renamed from: e */
        private final long f12591e;
        @b("is_im")

        /* renamed from: f */
        private final boolean f12592f;

        /* renamed from: g */
        public final C10582b f12593g;

        /* renamed from: h */
        public final DomainOrigin f12594h;

        /* renamed from: i */
        public final boolean f12595i;

        /* renamed from: j */
        public final String f12596j;

        public C4060d() {
            this(null, 0L, null, null, 0L, false, null, null, false, null, 1023);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        public C4060d(String str, long j, String str2, w3.b.a.b bVar, long j2, boolean z, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str3, int i) {
            super("Notif", null);
            String str4 = "";
            str = (i & 1) != 0 ? "" : str;
            ?? r6 = (i & 2) != 0 ? -1 : j;
            str2 = (i & 4) != 0 ? "" : str2;
            if ((i & 8) != 0) {
                bVar = new w3.b.a.b();
                l.d(bVar, "DateTime.now()");
            }
            ?? r10 = (i & 16) != 0 ? -1 : j2;
            z = (i & 32) != 0 ? false : z;
            DomainOrigin domainOrigin2 = (i & 128) != 0 ? DomainOrigin.SMS : null;
            z2 = (i & 256) != 0 ? false : z2;
            str4 = (i & 512) == 0 ? str3 : str4;
            l.e(str, "notifCategory");
            l.e(str2, AnalyticsConstants.SENDER);
            l.e(bVar, "msgDateTime");
            l.e(domainOrigin2, "origin");
            l.e(str4, "message");
            this.f12587a = str;
            this.f12588b = r6;
            this.f12589c = str2;
            this.f12590d = bVar;
            this.f12591e = r10;
            this.f12592f = z;
            this.f12593g = null;
            this.f12594h = domainOrigin2;
            this.f12595i = z2;
            this.f12596j = str4;
        }

        /* renamed from: a */
        public final String m35239a() {
            return this.f12587a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4060d)) {
                    return false;
                }
                C4060d c4060d = (C4060d) obj;
                return l.a(this.f12587a, c4060d.f12587a) && this.f12588b == c4060d.f12588b && l.a(this.f12589c, c4060d.f12589c) && l.a(this.f12590d, c4060d.f12590d) && this.f12591e == c4060d.f12591e && this.f12592f == c4060d.f12592f && l.a(this.f12593g, c4060d.f12593g) && l.a(this.f12594h, c4060d.f12594h) && this.f12595i == c4060d.f12595i && l.a(this.f12596j, c4060d.f12596j);
            }
            return true;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12593g;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12591e;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12596j;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12590d;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12588b;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12594h;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12589c;
        }

        public int hashCode() {
            String str = this.f12587a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12588b);
            String str2 = this.f12589c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            w3.b.a.b bVar = this.f12590d;
            int hashCode3 = bVar != null ? bVar.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f12591e);
            boolean z = this.f12592f;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            C10582b c10582b = this.f12593g;
            int hashCode4 = c10582b != null ? c10582b.hashCode() : 0;
            DomainOrigin domainOrigin = this.f12594h;
            int hashCode5 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12595i;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            String str3 = this.f12596j;
            if (str3 != null) {
                i = str3.hashCode();
            }
            return (((((((((((((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a2) * 31) + i3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + i;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12595i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Notif(notifCategory=");
            m8728C.append(this.f12587a);
            m8728C.append(", msgId=");
            m8728C.append(this.f12588b);
            m8728C.append(", sender=");
            m8728C.append(this.f12589c);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12590d);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12591e);
            m8728C.append(", isIM=");
            m8728C.append(this.f12592f);
            m8728C.append(", actionState=");
            m8728C.append(this.f12593g);
            m8728C.append(", origin=");
            m8728C.append(this.f12594h);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12595i);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f12596j, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\b\u0018��2\u00020\u0001Bw\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u00106\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010*\u001a\u00020%\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u00108\u001a\u00020\n\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010$\u001a\u00020\u001f\u0012\b\b\u0002\u00103\u001a\u00020\n\u0012\b\b\u0002\u0010-\u001a\u00020\u0002¢\u0006\u0004\b9\u0010:J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u0012\u001a\u00020\r8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0004R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001e\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0004R\u001c\u0010$\u001a\u00020\u001f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001c\u0010*\u001a\u00020%8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001c\u0010-\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u0010\u0014\u001a\u0004\b,\u0010\u0004R\u001e\u00100\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010\u0014\u001a\u0004\b/\u0010\u0004R\u001c\u00103\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u001c\u00106\u001a\u00020\r8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b/\u0010\u000f\u001a\u0004\b5\u0010\u0011R\u001c\u00108\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b7\u00102\u001a\u0004\b8\u00104¨\u0006;"}, d2 = {"com/truecaller/insights/models/InsightsDomain$e", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "a", "J", "getMsgId", "()J", RemoteMessageConst.MSGID, AbstractC2405c.f7629a, "Ljava/lang/String;", AnalyticsConstants.OTP, "Le/a/c/r/j/b;", "h", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "g", "getSender", AnalyticsConstants.SENDER, "Lcom/truecaller/insights/models/DomainOrigin;", "i", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "Lw3/b/a/b;", "d", "Lw3/b/a/b;", "getMsgDateTime", "()Lw3/b/a/b;", "msgDateTime", "k", "getMessage", "message", "e", C22021b.f61237c, "codeType", "j", "Z", "isSenderVerifiedForSmartFeatures", "()Z", "getConversationId", "conversationId", "f", "isIM", "<init>", "(JJLjava/lang/String;Lw3/b/a/b;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$e */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$e.class */
    public static final class C4061e extends InsightsDomain {
        @b("messageID")

        /* renamed from: a */
        private final long f12597a;
        @b("conversation_id")

        /* renamed from: b */
        private final long f12598b;
        @b("val3")

        /* renamed from: c */
        private final String f12599c;
        @b("msgdatetime")

        /* renamed from: d */
        private final w3.b.a.b f12600d;
        @b("k")

        /* renamed from: e */
        private final String f12601e;
        @b("is_im")

        /* renamed from: f */
        private final boolean f12602f;
        @b("address")

        /* renamed from: g */
        private final String f12603g;

        /* renamed from: h */
        public final C10582b f12604h;

        /* renamed from: i */
        public final DomainOrigin f12605i;

        /* renamed from: j */
        public final boolean f12606j;

        /* renamed from: k */
        public final String f12607k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4061e(long j, long j2, String str, w3.b.a.b bVar, String str2, boolean z, String str3, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str4) {
            super("OTP", null);
            l.e(str, AnalyticsConstants.OTP);
            l.e(bVar, "msgDateTime");
            l.e(str3, AnalyticsConstants.SENDER);
            l.e(domainOrigin, "origin");
            l.e(str4, "message");
            this.f12597a = j;
            this.f12598b = j2;
            this.f12599c = str;
            this.f12600d = bVar;
            this.f12601e = str2;
            this.f12602f = z;
            this.f12603g = str3;
            this.f12604h = c10582b;
            this.f12605i = domainOrigin;
            this.f12606j = z2;
            this.f12607k = str4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* JADX WARN: Type inference failed for: r17v1 */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v3 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* renamed from: a */
        public static C4061e m35238a(C4061e c4061e, long j, long j2, String str, w3.b.a.b bVar, String str2, boolean z, String str3, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str4, int i) {
            ?? r17 = j;
            if ((i & 1) != 0) {
                r17 = c4061e.f12597a;
            }
            ?? r19 = j2;
            if ((i & 2) != 0) {
                r19 = c4061e.f12598b;
            }
            String str5 = null;
            String str6 = (i & 4) != 0 ? c4061e.f12599c : null;
            w3.b.a.b bVar2 = (i & 8) != 0 ? c4061e.f12600d : null;
            String str7 = (i & 16) != 0 ? c4061e.f12601e : null;
            if ((i & 32) != 0) {
                z = c4061e.f12602f;
            }
            String str8 = (i & 64) != 0 ? c4061e.f12603g : null;
            if ((i & 128) != 0) {
                c10582b = c4061e.f12604h;
            }
            DomainOrigin domainOrigin2 = (i & 256) != 0 ? c4061e.f12605i : null;
            if ((i & 512) != 0) {
                z2 = c4061e.f12606j;
            }
            if ((i & 1024) != 0) {
                str5 = c4061e.f12607k;
            }
            l.e(str6, AnalyticsConstants.OTP);
            l.e(bVar2, "msgDateTime");
            l.e(str8, AnalyticsConstants.SENDER);
            l.e(domainOrigin2, "origin");
            l.e(str5, "message");
            return new C4061e(r17, r19, str6, bVar2, str7, z, str8, c10582b, domainOrigin2, z2, str5);
        }

        /* renamed from: b */
        public final String m35237b() {
            return this.f12601e;
        }

        /* renamed from: c */
        public final String m35236c() {
            return this.f12599c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4061e)) {
                    return false;
                }
                C4061e c4061e = (C4061e) obj;
                return this.f12597a == c4061e.f12597a && this.f12598b == c4061e.f12598b && l.a(this.f12599c, c4061e.f12599c) && l.a(this.f12600d, c4061e.f12600d) && l.a(this.f12601e, c4061e.f12601e) && this.f12602f == c4061e.f12602f && l.a(this.f12603g, c4061e.f12603g) && l.a(this.f12604h, c4061e.f12604h) && l.a(this.f12605i, c4061e.f12605i) && this.f12606j == c4061e.f12606j && l.a(this.f12607k, c4061e.f12607k);
            }
            return true;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12604h;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12598b;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12607k;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12600d;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12597a;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12605i;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12603g;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f12597a);
            int m34274a2 = C4876d.m34274a(this.f12598b);
            String str = this.f12599c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            w3.b.a.b bVar = this.f12600d;
            int hashCode2 = bVar != null ? bVar.hashCode() : 0;
            String str2 = this.f12601e;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            boolean z = this.f12602f;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            String str3 = this.f12603g;
            int hashCode4 = str3 != null ? str3.hashCode() : 0;
            C10582b c10582b = this.f12604h;
            int hashCode5 = c10582b != null ? c10582b.hashCode() : 0;
            DomainOrigin domainOrigin = this.f12605i;
            int hashCode6 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12606j;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            String str4 = this.f12607k;
            if (str4 != null) {
                i = str4.hashCode();
            }
            return (((((((((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2) * 31) + i;
        }

        public final boolean isIM() {
            return this.f12602f;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12606j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Otp(msgId=");
            m8728C.append(this.f12597a);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12598b);
            m8728C.append(", otp=");
            m8728C.append(this.f12599c);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12600d);
            m8728C.append(", codeType=");
            m8728C.append(this.f12601e);
            m8728C.append(", isIM=");
            m8728C.append(this.f12602f);
            m8728C.append(", sender=");
            m8728C.append(this.f12603g);
            m8728C.append(", actionState=");
            m8728C.append(this.f12604h);
            m8728C.append(", origin=");
            m8728C.append(this.f12605i);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12606j);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f12607k, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u001a\u001a\u00020\u00158\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001d\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u001c\u0010\u0004R\u001c\u0010 \u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u000e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010#\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\u000e\u001a\u0004\b\"\u0010\u0004R\u001c\u0010)\u001a\u00020$8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001c\u0010+\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010\u000e\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010-\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b,\u0010\u000e\u001a\u0004\b*\u0010\u0004R\u001c\u0010/\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010\u000e\u001a\u0004\b\r\u0010\u0004R\u001c\u00102\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010\u000e\u001a\u0004\b1\u0010\u0004R\u001c\u00104\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b3\u0010\u000e\u001a\u0004\b.\u0010\u0004R\u0019\u0010:\u001a\u0002058\u0006@\u0006¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001c\u0010;\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u000e\u001a\u0004\b6\u0010\u0004R\u001c\u0010>\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b<\u0010\u000e\u001a\u0004\b=\u0010\u0004R\u001c\u0010?\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010\u000e\u001a\u0004\b,\u0010\u0004R\u001e\u0010E\u001a\u0004\u0018\u00010@8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u001c\u0010H\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bF\u0010\u000e\u001a\u0004\bG\u0010\u0004R\u001c\u0010J\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u000e\u001a\u0004\bI\u0010\u0004R\u001e\u0010L\u001a\u0004\u0018\u0001058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bK\u00107\u001a\u0004\b3\u00109R\u001c\u0010N\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bG\u0010\u000e\u001a\u0004\bM\u0010\u0004R\u001c\u0010R\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010\u0007R\u001c\u0010T\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bM\u0010\u000e\u001a\u0004\bS\u0010\u0004R\u001e\u0010Z\u001a\u0004\u0018\u00010U8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u001c\u0010]\u001a\u0002058\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b[\u00107\u001a\u0004\b\\\u00109R\"\u0010b\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b^\u0010\u000e\u001a\u0004\b_\u0010\u0004\"\u0004\b`\u0010aR\u001c\u0010e\u001a\u00020$8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\bc\u0010&\u001a\u0004\bd\u0010(R\u001c\u0010g\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bf\u0010\u000e\u001a\u0004\bf\u0010\u0004R\u001c\u0010i\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bh\u0010\u0012\u001a\u0004\bi\u0010\u0014¨\u0006j"}, d2 = {"com/truecaller/insights/models/InsightsDomain$f", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "i", "Ljava/lang/String;", "f", "psngerName", "y", "Z", "isIM", "()Z", "Lcom/truecaller/insights/models/DomainOrigin;", "A", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "C", "getMessage", "message", "j", "m", "tripId", "u", "k", "travelMode", "", "w", "J", "getConversationId", "()J", "conversationId", C22021b.f61237c, "travelCategory", "g", "boardPointOrClassType", "d", "toLoc", "p", "getUrlType", "urlType", AbstractC2405c.f7629a, "fromLoc", "Lw3/b/a/b;", "a", "Lw3/b/a/b;", "getTravelDateTime", "()Lw3/b/a/b;", "travelDateTime", "alertType", "r", "getUrl", "url", "seat", "Le/a/c/r/j/b;", "z", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "q", "h", "teleNum", "getFareAmt", "fareAmt", "n", "deptDateTime", "l", "travelVendor", "x", "I", "getSpamCategory", "spamCategory", "getSeatNum", "seatNum", "Lw3/b/a/r;", "o", "Lw3/b/a/r;", "getDeptTime", "()Lw3/b/a/r;", "deptTime", "v", "getMsgDateTime", "msgDateTime", "t", "getSender", "setSender", "(Ljava/lang/String;)V", AnalyticsConstants.SENDER, "s", "getMsgId", RemoteMessageConst.MSGID, "e", "pnrId", "B", "isSenderVerifiedForSmartFeatures", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$f */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$f.class */
    public static final class C4062f extends InsightsDomain {

        /* renamed from: A */
        public final DomainOrigin f12608A;

        /* renamed from: B */
        public final boolean f12609B;

        /* renamed from: C */
        public final String f12610C;

        /* renamed from: a */
        public final w3.b.a.b f12611a;
        @b("k")

        /* renamed from: b */
        private final String f12612b;
        @b("p")

        /* renamed from: c */
        private final String f12613c;
        @b(AbstractC2405c.f7629a)

        /* renamed from: d */
        private final String f12614d;
        @b("o")

        /* renamed from: e */
        private final String f12615e;
        @b("f")

        /* renamed from: f */
        private final String f12616f;
        @b("g")

        /* renamed from: g */
        private final String f12617g;
        @b("s")

        /* renamed from: h */
        private final String f12618h;
        @b("val1")

        /* renamed from: i */
        private final String f12619i;
        @b("val2")

        /* renamed from: j */
        private final String f12620j;
        @b("val3")

        /* renamed from: k */
        private final String f12621k;
        @b("val4")

        /* renamed from: l */
        private final String f12622l;
        @b("val5")

        /* renamed from: m */
        private final String f12623m;
        @b("datetime")

        /* renamed from: n */
        private final w3.b.a.b f12624n;
        @b("dffVal1")

        /* renamed from: o */
        private final r f12625o;
        @b("dffVal3")

        /* renamed from: p */
        private final String f12626p;
        @b("dffVal4")

        /* renamed from: q */
        private final String f12627q;
        @b("dffVal5")

        /* renamed from: r */
        private final String f12628r;
        @b("messageID")

        /* renamed from: s */
        private final long f12629s;
        @b("address")

        /* renamed from: t */
        private String f12630t;
        @b("dffVal2")

        /* renamed from: u */
        private final String f12631u;
        @b("msgdatetime")

        /* renamed from: v */
        private final w3.b.a.b f12632v;
        @b("conversation_id")

        /* renamed from: w */
        private final long f12633w;
        @b("spam_category")

        /* renamed from: x */
        private final int f12634x;
        @b("is_im")

        /* renamed from: y */
        private final boolean f12635y;

        /* renamed from: z */
        public final C10582b f12636z;

        public C4062f() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0L, null, null, null, 0L, 0, false, null, null, false, null, 268435455);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r27v1 */
        /* JADX WARN: Type inference failed for: r27v2 */
        /* JADX WARN: Type inference failed for: r27v3 */
        public C4062f(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, w3.b.a.b bVar, r rVar, String str13, String str14, String str15, long j, String str16, String str17, w3.b.a.b bVar2, long j2, int i, boolean z, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str18, int i2) {
            super("Travel", null);
            w3.b.a.b bVar3;
            String str19 = (i2 & 1) != 0 ? "" : str;
            String str20 = (i2 & 2) != 0 ? "" : str2;
            String str21 = (i2 & 4) != 0 ? "" : str3;
            str4 = (i2 & 8) != 0 ? "" : str4;
            str5 = (i2 & 16) != 0 ? "" : str5;
            str6 = (i2 & 32) != 0 ? "" : str6;
            str7 = (i2 & 64) != 0 ? "" : str7;
            str8 = (i2 & 128) != 0 ? "" : str8;
            str9 = (i2 & 256) != 0 ? "" : str9;
            str10 = (i2 & 512) != 0 ? "" : str10;
            str11 = (i2 & 1024) != 0 ? "" : str11;
            str12 = (i2 & 2048) != 0 ? "" : str12;
            w3.b.a.b bVar4 = (i2 & 4096) != 0 ? null : bVar;
            r rVar2 = (i2 & 8192) != 0 ? null : rVar;
            String str22 = (i2 & 16384) != 0 ? "" : str13;
            String str23 = (i2 & 32768) != 0 ? "" : str14;
            w3.b.a.b bVar5 = bVar4;
            String str24 = (i2 & 65536) != 0 ? "" : str15;
            ?? r22 = (i2 & 131072) != 0 ? -1 : j;
            String str25 = (i2 & 262144) != 0 ? "" : str16;
            String str26 = (i2 & 524288) != 0 ? "" : str17;
            if ((i2 & 1048576) != 0) {
                bVar3 = new w3.b.a.b();
                l.d(bVar3, "DateTime.now()");
            } else {
                bVar3 = bVar2;
            }
            String str27 = str23;
            String str28 = str24;
            ?? r27 = (2097152 & i2) != 0 ? -1 : j2;
            i = (4194304 & i2) != 0 ? 1 : i;
            z = (i2 & 8388608) != 0 ? false : z;
            C10582b c10582b2 = (i2 & 16777216) != 0 ? null : c10582b;
            DomainOrigin domainOrigin2 = (i2 & 33554432) != 0 ? DomainOrigin.SMS : null;
            z2 = (i2 & 67108864) != 0 ? false : z2;
            String str29 = (i2 & 134217728) != 0 ? "" : str18;
            l.e(str19, "travelCategory");
            l.e(str20, "fromLoc");
            l.e(str21, "toLoc");
            l.e(str4, "pnrId");
            l.e(str5, "alertType");
            l.e(str6, "boardPointOrClassType");
            l.e(str7, "travelVendor");
            l.e(str8, "psngerName");
            l.e(str9, "tripId");
            l.e(str10, "seat");
            l.e(str11, "seatNum");
            l.e(str12, "fareAmt");
            l.e(str22, "urlType");
            l.e(str27, "teleNum");
            l.e(str28, "url");
            l.e(str25, AnalyticsConstants.SENDER);
            l.e(str26, "travelMode");
            l.e(bVar3, "msgDateTime");
            l.e(domainOrigin2, "origin");
            l.e(str29, "message");
            this.f12612b = str19;
            this.f12613c = str20;
            this.f12614d = str21;
            this.f12615e = str4;
            this.f12616f = str5;
            this.f12617g = str6;
            this.f12618h = str7;
            this.f12619i = str8;
            this.f12620j = str9;
            this.f12621k = str10;
            this.f12622l = str11;
            this.f12623m = str12;
            this.f12624n = bVar5;
            this.f12625o = rVar2;
            this.f12626p = str22;
            this.f12627q = str27;
            this.f12628r = str28;
            this.f12629s = r22;
            this.f12630t = str25;
            this.f12631u = str26;
            this.f12632v = bVar3;
            this.f12633w = r27;
            this.f12634x = i;
            this.f12635y = z;
            this.f12636z = c10582b2;
            this.f12608A = domainOrigin2;
            this.f12609B = z2;
            this.f12610C = str29;
            this.f12611a = bVar5 != null ? bVar5 : bVar3;
        }

        /* renamed from: a */
        public final String m35235a() {
            return this.f12616f;
        }

        /* renamed from: b */
        public final String m35234b() {
            return this.f12617g;
        }

        /* renamed from: c */
        public final w3.b.a.b m35233c() {
            return this.f12624n;
        }

        /* renamed from: d */
        public final String m35232d() {
            return this.f12613c;
        }

        /* renamed from: e */
        public final String m35231e() {
            return this.f12615e;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4062f)) {
                    return false;
                }
                C4062f c4062f = (C4062f) obj;
                return l.a(this.f12612b, c4062f.f12612b) && l.a(this.f12613c, c4062f.f12613c) && l.a(this.f12614d, c4062f.f12614d) && l.a(this.f12615e, c4062f.f12615e) && l.a(this.f12616f, c4062f.f12616f) && l.a(this.f12617g, c4062f.f12617g) && l.a(this.f12618h, c4062f.f12618h) && l.a(this.f12619i, c4062f.f12619i) && l.a(this.f12620j, c4062f.f12620j) && l.a(this.f12621k, c4062f.f12621k) && l.a(this.f12622l, c4062f.f12622l) && l.a(this.f12623m, c4062f.f12623m) && l.a(this.f12624n, c4062f.f12624n) && l.a(this.f12625o, c4062f.f12625o) && l.a(this.f12626p, c4062f.f12626p) && l.a(this.f12627q, c4062f.f12627q) && l.a(this.f12628r, c4062f.f12628r) && this.f12629s == c4062f.f12629s && l.a(this.f12630t, c4062f.f12630t) && l.a(this.f12631u, c4062f.f12631u) && l.a(this.f12632v, c4062f.f12632v) && this.f12633w == c4062f.f12633w && this.f12634x == c4062f.f12634x && this.f12635y == c4062f.f12635y && l.a(this.f12636z, c4062f.f12636z) && l.a(this.f12608A, c4062f.f12608A) && this.f12609B == c4062f.f12609B && l.a(this.f12610C, c4062f.f12610C);
            }
            return true;
        }

        /* renamed from: f */
        public final String m35230f() {
            return this.f12619i;
        }

        /* renamed from: g */
        public final String m35229g() {
            return this.f12621k;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12636z;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12633w;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12610C;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12632v;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12629s;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12608A;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12630t;
        }

        public final int getSpamCategory() {
            return this.f12634x;
        }

        public final String getUrl() {
            return this.f12628r;
        }

        public final String getUrlType() {
            return this.f12626p;
        }

        /* renamed from: h */
        public final String m35228h() {
            return this.f12627q;
        }

        public int hashCode() {
            String str = this.f12612b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f12613c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f12614d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f12615e;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f12616f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f12617g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f12618h;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f12619i;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f12620j;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            String str10 = this.f12621k;
            int hashCode10 = str10 != null ? str10.hashCode() : 0;
            String str11 = this.f12622l;
            int hashCode11 = str11 != null ? str11.hashCode() : 0;
            String str12 = this.f12623m;
            int hashCode12 = str12 != null ? str12.hashCode() : 0;
            w3.b.a.b bVar = this.f12624n;
            int hashCode13 = bVar != null ? bVar.hashCode() : 0;
            r rVar = this.f12625o;
            int hashCode14 = rVar != null ? rVar.hashCode() : 0;
            String str13 = this.f12626p;
            int hashCode15 = str13 != null ? str13.hashCode() : 0;
            String str14 = this.f12627q;
            int hashCode16 = str14 != null ? str14.hashCode() : 0;
            String str15 = this.f12628r;
            int hashCode17 = str15 != null ? str15.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12629s);
            String str16 = this.f12630t;
            int hashCode18 = str16 != null ? str16.hashCode() : 0;
            String str17 = this.f12631u;
            int hashCode19 = str17 != null ? str17.hashCode() : 0;
            w3.b.a.b bVar2 = this.f12632v;
            int hashCode20 = bVar2 != null ? bVar2.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f12633w);
            int i2 = this.f12634x;
            boolean z = this.f12635y;
            int i3 = 1;
            int i4 = z ? 1 : 0;
            if (z) {
                i4 = 1;
            }
            C10582b c10582b = this.f12636z;
            int hashCode21 = c10582b != null ? c10582b.hashCode() : 0;
            DomainOrigin domainOrigin = this.f12608A;
            int hashCode22 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12609B;
            if (!z2) {
                i3 = z2 ? 1 : 0;
            }
            String str18 = this.f12610C;
            if (str18 != null) {
                i = str18.hashCode();
            }
            return (((((((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + m34274a) * 31) + hashCode18) * 31) + hashCode19) * 31) + hashCode20) * 31) + m34274a2) * 31) + i2) * 31) + i4) * 31) + hashCode21) * 31) + hashCode22) * 31) + i3) * 31) + i;
        }

        /* renamed from: i */
        public final String m35227i() {
            return this.f12614d;
        }

        public final boolean isIM() {
            return this.f12635y;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12609B;
        }

        /* renamed from: j */
        public final String m35226j() {
            return this.f12612b;
        }

        /* renamed from: k */
        public final String m35225k() {
            return this.f12631u;
        }

        /* renamed from: l */
        public final String m35224l() {
            return this.f12618h;
        }

        /* renamed from: m */
        public final String m35223m() {
            return this.f12620j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Travel(travelCategory=");
            m8728C.append(this.f12612b);
            m8728C.append(", fromLoc=");
            m8728C.append(this.f12613c);
            m8728C.append(", toLoc=");
            m8728C.append(this.f12614d);
            m8728C.append(", pnrId=");
            m8728C.append(this.f12615e);
            m8728C.append(", alertType=");
            m8728C.append(this.f12616f);
            m8728C.append(", boardPointOrClassType=");
            m8728C.append(this.f12617g);
            m8728C.append(", travelVendor=");
            m8728C.append(this.f12618h);
            m8728C.append(", psngerName=");
            m8728C.append(this.f12619i);
            m8728C.append(", tripId=");
            m8728C.append(this.f12620j);
            m8728C.append(", seat=");
            m8728C.append(this.f12621k);
            m8728C.append(", seatNum=");
            m8728C.append(this.f12622l);
            m8728C.append(", fareAmt=");
            m8728C.append(this.f12623m);
            m8728C.append(", deptDateTime=");
            m8728C.append(this.f12624n);
            m8728C.append(", deptTime=");
            m8728C.append(this.f12625o);
            m8728C.append(", urlType=");
            m8728C.append(this.f12626p);
            m8728C.append(", teleNum=");
            m8728C.append(this.f12627q);
            m8728C.append(", url=");
            m8728C.append(this.f12628r);
            m8728C.append(", msgId=");
            m8728C.append(this.f12629s);
            m8728C.append(", sender=");
            m8728C.append(this.f12630t);
            m8728C.append(", travelMode=");
            m8728C.append(this.f12631u);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12632v);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12633w);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f12634x);
            m8728C.append(", isIM=");
            m8728C.append(this.f12635y);
            m8728C.append(", actionState=");
            m8728C.append(this.f12636z);
            m8728C.append(", origin=");
            m8728C.append(this.f12608A);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12609B);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f12610C, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��T\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u0012\u001a\u00020\r8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010!\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001c\u0010(\u001a\u00020#8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001c\u0010,\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010\u0004R\u0019\u0010/\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b-\u0010*\u001a\u0004\b.\u0010\u0004R\u001c\u00102\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b0\u0010*\u001a\u0004\b1\u0010\u0004R\u001c\u00104\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b3\u0010 \u001a\u0004\b4\u0010\"R\u001c\u0010:\u001a\u0002058\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001c\u0010=\u001a\u0002058\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b;\u00107\u001a\u0004\b<\u00109R\u0019\u0010C\u001a\u00020>8\u0006@\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B¨\u0006D"}, d2 = {"com/truecaller/insights/models/InsightsDomain$g", "Lcom/truecaller/insights/models/InsightsDomain;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lw3/b/a/b;", "e", "Lw3/b/a/b;", "getMsgDateTime", "()Lw3/b/a/b;", "msgDateTime", "Lcom/truecaller/insights/models/updates/UpdateCategory;", "a", "Lcom/truecaller/insights/models/updates/UpdateCategory;", "getUpdateCategory", "()Lcom/truecaller/insights/models/updates/UpdateCategory;", "updateCategory", "Le/a/c/r/j/b;", "h", "Le/a/c/r/j/b;", "getActionState", "()Le/a/c/r/j/b;", "actionState", "j", "Z", "isSenderVerifiedForSmartFeatures", "()Z", "Lcom/truecaller/insights/models/DomainOrigin;", "i", "Lcom/truecaller/insights/models/DomainOrigin;", "getOrigin", "()Lcom/truecaller/insights/models/DomainOrigin;", "origin", "k", "Ljava/lang/String;", "getMessage", "message", C22021b.f61237c, "getUpdateCategoryString", "updateCategoryString", "d", "getSender", AnalyticsConstants.SENDER, "g", "isIM", "", AbstractC2405c.f7629a, "J", "getMsgId", "()J", RemoteMessageConst.MSGID, "f", "getConversationId", "conversationId", "Lcom/truecaller/insights/models/pdo/ClassifierType;", "l", "Lcom/truecaller/insights/models/pdo/ClassifierType;", "getClassifiedBy", "()Lcom/truecaller/insights/models/pdo/ClassifierType;", "classifiedBy", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.models.InsightsDomain$g */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsDomain$g.class */
    public static final class C4063g extends InsightsDomain {

        /* renamed from: a */
        public final UpdateCategory f12637a;

        /* renamed from: b */
        public final String f12638b;
        @b("messageID")

        /* renamed from: c */
        private final long f12639c;
        @b("address")

        /* renamed from: d */
        private final String f12640d;
        @b("msgdatetime")

        /* renamed from: e */
        private final w3.b.a.b f12641e;
        @b("conversation_id")

        /* renamed from: f */
        private final long f12642f;
        @b("is_im")

        /* renamed from: g */
        private final boolean f12643g;

        /* renamed from: h */
        public final C10582b f12644h;

        /* renamed from: i */
        public final DomainOrigin f12645i;

        /* renamed from: j */
        public final boolean f12646j;

        /* renamed from: k */
        public final String f12647k;

        /* renamed from: l */
        public final ClassifierType f12648l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        public C4063g(UpdateCategory updateCategory, String str, long j, String str2, w3.b.a.b bVar, long j2, boolean z, C10582b c10582b, DomainOrigin domainOrigin, boolean z2, String str3, ClassifierType classifierType, int i) {
            super("Updates", null);
            ?? r7 = (i & 4) != 0 ? -1 : j;
            String str4 = "";
            str2 = (i & 8) != 0 ? "" : str2;
            if ((i & 16) != 0) {
                bVar = new w3.b.a.b();
                l.d(bVar, "DateTime.now()");
            }
            ?? r11 = (i & 32) != 0 ? -1 : j2;
            z = (i & 64) != 0 ? false : z;
            DomainOrigin domainOrigin2 = (i & 256) != 0 ? DomainOrigin.SMS : null;
            z2 = (i & 512) != 0 ? false : z2;
            str4 = (i & 1024) == 0 ? str3 : str4;
            ClassifierType classifierType2 = (i & 2048) != 0 ? ClassifierType.DEFAULT : classifierType;
            l.e(str, "updateCategoryString");
            l.e(str2, AnalyticsConstants.SENDER);
            l.e(bVar, "msgDateTime");
            l.e(domainOrigin2, "origin");
            l.e(str4, "message");
            l.e(classifierType2, "classifiedBy");
            this.f12637a = updateCategory;
            this.f12638b = str;
            this.f12639c = r7;
            this.f12640d = str2;
            this.f12641e = bVar;
            this.f12642f = r11;
            this.f12643g = z;
            this.f12644h = null;
            this.f12645i = domainOrigin2;
            this.f12646j = z2;
            this.f12647k = str4;
            this.f12648l = classifierType2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4063g)) {
                    return false;
                }
                C4063g c4063g = (C4063g) obj;
                return l.a(this.f12637a, c4063g.f12637a) && l.a(this.f12638b, c4063g.f12638b) && this.f12639c == c4063g.f12639c && l.a(this.f12640d, c4063g.f12640d) && l.a(this.f12641e, c4063g.f12641e) && this.f12642f == c4063g.f12642f && this.f12643g == c4063g.f12643g && l.a(this.f12644h, c4063g.f12644h) && l.a(this.f12645i, c4063g.f12645i) && this.f12646j == c4063g.f12646j && l.a(this.f12647k, c4063g.f12647k) && l.a(this.f12648l, c4063g.f12648l);
            }
            return true;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public C10582b getActionState() {
            return this.f12644h;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getConversationId() {
            return this.f12642f;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getMessage() {
            return this.f12647k;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public w3.b.a.b getMsgDateTime() {
            return this.f12641e;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public long getMsgId() {
            return this.f12639c;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public DomainOrigin getOrigin() {
            return this.f12645i;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public String getSender() {
            return this.f12640d;
        }

        public int hashCode() {
            UpdateCategory updateCategory = this.f12637a;
            int i = 0;
            int hashCode = updateCategory != null ? updateCategory.hashCode() : 0;
            String str = this.f12638b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12639c);
            String str2 = this.f12640d;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            w3.b.a.b bVar = this.f12641e;
            int hashCode4 = bVar != null ? bVar.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f12642f);
            boolean z = this.f12643g;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            C10582b c10582b = this.f12644h;
            int hashCode5 = c10582b != null ? c10582b.hashCode() : 0;
            DomainOrigin domainOrigin = this.f12645i;
            int hashCode6 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            boolean z2 = this.f12646j;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            String str3 = this.f12647k;
            int hashCode7 = str3 != null ? str3.hashCode() : 0;
            ClassifierType classifierType = this.f12648l;
            if (classifierType != null) {
                i = classifierType.hashCode();
            }
            return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a2) * 31) + i3) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2) * 31) + hashCode7) * 31) + i;
        }

        public final boolean isIM() {
            return this.f12643g;
        }

        @Override // com.truecaller.insights.models.InsightsDomain
        public boolean isSenderVerifiedForSmartFeatures() {
            return this.f12646j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Updates(updateCategory=");
            m8728C.append(this.f12637a);
            m8728C.append(", updateCategoryString=");
            m8728C.append(this.f12638b);
            m8728C.append(", msgId=");
            m8728C.append(this.f12639c);
            m8728C.append(", sender=");
            m8728C.append(this.f12640d);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f12641e);
            m8728C.append(", conversationId=");
            m8728C.append(this.f12642f);
            m8728C.append(", isIM=");
            m8728C.append(this.f12643g);
            m8728C.append(", actionState=");
            m8728C.append(this.f12644h);
            m8728C.append(", origin=");
            m8728C.append(this.f12645i);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f12646j);
            m8728C.append(", message=");
            m8728C.append(this.f12647k);
            m8728C.append(", classifiedBy=");
            m8728C.append(this.f12648l);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    private InsightsDomain(String str) {
        this.category = str;
    }

    public /* synthetic */ InsightsDomain(String str, f fVar) {
        this(str);
    }

    public abstract C10582b getActionState();

    public final String getCategory() {
        return this.category;
    }

    public abstract long getConversationId();

    public abstract String getMessage();

    public abstract w3.b.a.b getMsgDateTime();

    public abstract long getMsgId();

    public abstract DomainOrigin getOrigin();

    public abstract String getSender();

    public abstract boolean isSenderVerifiedForSmartFeatures();
}
