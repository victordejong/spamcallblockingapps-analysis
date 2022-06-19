package com.truecaller.insights.models.pdo;

import androidx.annotation.Keep;
import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import java.util.Date;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b5\n\u0002\u0010\t\n\u0002\b-\b\u0017\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bw\u0010xJ\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\"\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000b\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\b\"\u0004\b \u0010!R\"\u0010\"\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u000b\u001a\u0004\b#\u0010\r\"\u0004\b$\u0010\u000fR\"\u0010%\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0018\u001a\u0004\b&\u0010\u001a\"\u0004\b'\u0010\u001cR\"\u0010(\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b(\u0010\u000b\u001a\u0004\b)\u0010\r\"\u0004\b*\u0010\u000fR\"\u0010+\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b+\u0010\u000b\u001a\u0004\b,\u0010\r\"\u0004\b-\u0010\u000fR\"\u0010.\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b.\u0010\u000b\u001a\u0004\b/\u0010\r\"\u0004\b0\u0010\u000fR\"\u00101\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b1\u0010\u000b\u001a\u0004\b2\u0010\r\"\u0004\b3\u0010\u000fR\"\u00104\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b4\u0010\u000b\u001a\u0004\b5\u0010\r\"\u0004\b6\u0010\u000fR\"\u00107\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b7\u0010\u000b\u001a\u0004\b8\u0010\r\"\u0004\b9\u0010\u000fR\"\u0010:\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b:\u0010\u000b\u001a\u0004\b;\u0010\r\"\u0004\b<\u0010\u000fR\"\u0010=\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010C\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bC\u0010\u000b\u001a\u0004\bD\u0010\r\"\u0004\bE\u0010\u000fR\"\u0010F\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bF\u0010>\u001a\u0004\bG\u0010@\"\u0004\bH\u0010BR\"\u0010I\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bI\u0010\u000b\u001a\u0004\bJ\u0010\r\"\u0004\bK\u0010\u000fR\"\u0010M\u001a\u00020L8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\"\u0010S\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bS\u0010\u000b\u001a\u0004\bT\u0010\r\"\u0004\bU\u0010\u000fR\"\u0010V\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bV\u0010\u000b\u001a\u0004\bW\u0010\r\"\u0004\bX\u0010\u000fR\"\u0010Y\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bY\u0010\u000b\u001a\u0004\bZ\u0010\r\"\u0004\b[\u0010\u000fR\"\u0010\\\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\\\u0010\u000b\u001a\u0004\b]\u0010\r\"\u0004\b^\u0010\u000fR$\u0010_\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\"\u0010e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\be\u0010\u000b\u001a\u0004\bf\u0010\r\"\u0004\bg\u0010\u000fR\"\u0010h\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bh\u0010\u000b\u001a\u0004\bi\u0010\r\"\u0004\bj\u0010\u000fR\"\u0010k\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bk\u0010\u000b\u001a\u0004\bl\u0010\r\"\u0004\bm\u0010\u000fR\"\u0010n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bn\u0010\u000b\u001a\u0004\bo\u0010\r\"\u0004\bp\u0010\u000fR$\u0010q\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bq\u0010`\u001a\u0004\br\u0010b\"\u0004\bs\u0010dR\"\u0010t\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bt\u0010\u000b\u001a\u0004\bu\u0010\r\"\u0004\bv\u0010\u000f¨\u0006y"}, d2 = {"Lcom/truecaller/insights/models/pdo/ParsedDataObject;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "g", "Ljava/lang/String;", "getG", "()Ljava/lang/String;", "setG", "(Ljava/lang/String;)V", "state", "getState", "setState", "p", "getP", "setP", "Ljava/util/Date;", "createdAt", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "spamCategory", "I", "getSpamCategory", "setSpamCategory", "(I)V", "val2", "getVal2", "setVal2", "msgDate", "getMsgDate", "setMsgDate", "val1", "getVal1", "setVal1", "dffVal3", "getDffVal3", "setDffVal3", "address", "getAddress", "setAddress", "dffVal5", "getDffVal5", "setDffVal5", AbstractC2405c.f7629a, "getC", "setC", "f", "getF", "setF", "datetime", "getDatetime", "setDatetime", "deleted", "Z", "getDeleted", "()Z", "setDeleted", "(Z)V", "dffVal1", "getDffVal1", "setDffVal1", "active", "getActive", "setActive", "dffVal4", "getDffVal4", "setDffVal4", "", "messageID", "J", "getMessageID", "()J", "setMessageID", "(J)V", "val3", "getVal3", "setVal3", "val5", "getVal5", "setVal5", "s", "getS", "setS", "o", "getO", "setO", "syntheticRecordId", "Ljava/lang/Long;", "getSyntheticRecordId", "()Ljava/lang/Long;", "setSyntheticRecordId", "(Ljava/lang/Long;)V", "k", "getK", "setK", "d", "getD", "setD", "date", "getDate", "setDate", "val4", "getVal4", "setVal4", "accountModelId", "getAccountModelId", "setAccountModelId", "dffVal2", "getDffVal2", "setDffVal2", "<init>", "()V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/ParsedDataObject.class */
public class ParsedDataObject {
    @b("account_model_id")
    private Long accountModelId;
    @b("deleted")
    private boolean deleted;
    @b("messageID")
    private long messageID;
    @b("synthetic_record_id")
    private Long syntheticRecordId;
    @b("d")

    /* renamed from: d */
    private String f12652d = "";
    @b("k")

    /* renamed from: k */
    private String f12655k = "";
    @b("p")

    /* renamed from: p */
    private String f12657p = "";
    @b(AbstractC2405c.f7629a)

    /* renamed from: c */
    private String f12651c = "";
    @b("o")

    /* renamed from: o */
    private String f12656o = "";
    @b("f")

    /* renamed from: f */
    private String f12653f = "";
    @b("g")

    /* renamed from: g */
    private String f12654g = "";
    @b("s")

    /* renamed from: s */
    private String f12658s = "";
    @b("val1")
    private String val1 = "";
    @b("val2")
    private String val2 = "";
    @b("val3")
    private String val3 = "";
    @b("val4")
    private String val4 = "";
    @b("val5")
    private String val5 = "";
    @b("datetime")
    private String datetime = "";
    @b("address")
    private String address = "";
    @b("date")
    private String date = "";
    @b("msg_date")
    private Date msgDate = new Date(0);
    @b("dffVal1")
    private String dffVal1 = "";
    @b("dffVal2")
    private String dffVal2 = "";
    @b("dffVal3")
    private String dffVal3 = "";
    @b("dffVal4")
    private String dffVal4 = "";
    @b("dffVal5")
    private String dffVal5 = "";
    @b("active")
    private boolean active = true;
    @b("state")
    private String state = "ORIGINAL";
    @b("created_at")
    private Date createdAt = new Date();
    @b("spam_category")
    private int spamCategory = 1;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.ParsedDataObject");
        ParsedDataObject parsedDataObject = (ParsedDataObject) obj;
        return this.messageID == parsedDataObject.messageID && !(l.a(this.f12652d, parsedDataObject.f12652d) ^ true) && !(l.a(this.f12655k, parsedDataObject.f12655k) ^ true) && !(l.a(this.f12657p, parsedDataObject.f12657p) ^ true) && !(l.a(this.f12651c, parsedDataObject.f12651c) ^ true) && !(l.a(this.f12656o, parsedDataObject.f12656o) ^ true) && !(l.a(this.f12653f, parsedDataObject.f12653f) ^ true) && !(l.a(this.f12654g, parsedDataObject.f12654g) ^ true) && !(l.a(this.f12658s, parsedDataObject.f12658s) ^ true) && !(l.a(this.accountModelId, parsedDataObject.accountModelId) ^ true) && !(l.a(this.val1, parsedDataObject.val1) ^ true) && !(l.a(this.val2, parsedDataObject.val2) ^ true) && !(l.a(this.val3, parsedDataObject.val3) ^ true) && !(l.a(this.val4, parsedDataObject.val4) ^ true) && !(l.a(this.val5, parsedDataObject.val5) ^ true) && !(l.a(this.datetime, parsedDataObject.datetime) ^ true) && !(l.a(this.address, parsedDataObject.address) ^ true) && !(l.a(this.msgDate, parsedDataObject.msgDate) ^ true) && !(l.a(this.date, parsedDataObject.date) ^ true) && !(l.a(this.dffVal1, parsedDataObject.dffVal1) ^ true) && !(l.a(this.dffVal2, parsedDataObject.dffVal2) ^ true) && !(l.a(this.dffVal3, parsedDataObject.dffVal3) ^ true) && !(l.a(this.dffVal4, parsedDataObject.dffVal4) ^ true) && !(l.a(this.dffVal5, parsedDataObject.dffVal5) ^ true) && this.active == parsedDataObject.active && !(l.a(this.state, parsedDataObject.state) ^ true) && !(l.a(this.syntheticRecordId, parsedDataObject.syntheticRecordId) ^ true) && this.deleted == parsedDataObject.deleted && !(l.a(this.createdAt, parsedDataObject.createdAt) ^ true) && this.spamCategory == parsedDataObject.spamCategory;
    }

    public final Long getAccountModelId() {
        return this.accountModelId;
    }

    public final boolean getActive() {
        return this.active;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getC() {
        return this.f12651c;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getD() {
        return this.f12652d;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getDatetime() {
        return this.datetime;
    }

    public final boolean getDeleted() {
        return this.deleted;
    }

    public final String getDffVal1() {
        return this.dffVal1;
    }

    public final String getDffVal2() {
        return this.dffVal2;
    }

    public final String getDffVal3() {
        return this.dffVal3;
    }

    public final String getDffVal4() {
        return this.dffVal4;
    }

    public final String getDffVal5() {
        return this.dffVal5;
    }

    public final String getF() {
        return this.f12653f;
    }

    public final String getG() {
        return this.f12654g;
    }

    public final String getK() {
        return this.f12655k;
    }

    public final long getMessageID() {
        return this.messageID;
    }

    public final Date getMsgDate() {
        return this.msgDate;
    }

    public final String getO() {
        return this.f12656o;
    }

    public final String getP() {
        return this.f12657p;
    }

    public final String getS() {
        return this.f12658s;
    }

    public final int getSpamCategory() {
        return this.spamCategory;
    }

    public final String getState() {
        return this.state;
    }

    public final Long getSyntheticRecordId() {
        return this.syntheticRecordId;
    }

    public final String getVal1() {
        return this.val1;
    }

    public final String getVal2() {
        return this.val2;
    }

    public final String getVal3() {
        return this.val3;
    }

    public final String getVal4() {
        return this.val4;
    }

    public final String getVal5() {
        return this.val5;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f12658s, C22128a.m8579q2(this.f12654g, C22128a.m8579q2(this.f12653f, C22128a.m8579q2(this.f12656o, C22128a.m8579q2(this.f12651c, C22128a.m8579q2(this.f12657p, C22128a.m8579q2(this.f12655k, C22128a.m8579q2(this.f12652d, C4876d.m34274a(this.messageID) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
        Long l = this.accountModelId;
        int m8579q22 = C22128a.m8579q2(this.state, (C0424b.m42597a(this.active) + C22128a.m8579q2(this.dffVal5, C22128a.m8579q2(this.dffVal4, C22128a.m8579q2(this.dffVal3, C22128a.m8579q2(this.dffVal2, C22128a.m8579q2(this.dffVal1, C22128a.m8579q2(this.date, (this.msgDate.hashCode() + C22128a.m8579q2(this.address, C22128a.m8579q2(this.datetime, C22128a.m8579q2(this.val5, C22128a.m8579q2(this.val4, C22128a.m8579q2(this.val3, C22128a.m8579q2(this.val2, C22128a.m8579q2(this.val1, (m8579q2 + (l != null ? C4876d.m34274a(l.longValue()) : 0)) * 31, 31), 31), 31), 31), 31), 31), 31)) * 31, 31), 31), 31), 31), 31), 31)) * 31, 31);
        Long l2 = this.syntheticRecordId;
        int i = 0;
        if (l2 != null) {
            i = C4876d.m34274a(l2.longValue());
        }
        return ((this.createdAt.hashCode() + ((C0424b.m42597a(this.deleted) + ((m8579q22 + i) * 31)) * 31)) * 31) + this.spamCategory;
    }

    public final void setAccountModelId(Long l) {
        this.accountModelId = l;
    }

    public final void setActive(boolean z) {
        this.active = z;
    }

    public final void setAddress(String str) {
        l.e(str, "<set-?>");
        this.address = str;
    }

    public final void setC(String str) {
        l.e(str, "<set-?>");
        this.f12651c = str;
    }

    public final void setCreatedAt(Date date) {
        l.e(date, "<set-?>");
        this.createdAt = date;
    }

    public final void setD(String str) {
        l.e(str, "<set-?>");
        this.f12652d = str;
    }

    public final void setDate(String str) {
        l.e(str, "<set-?>");
        this.date = str;
    }

    public final void setDatetime(String str) {
        l.e(str, "<set-?>");
        this.datetime = str;
    }

    public final void setDeleted(boolean z) {
        this.deleted = z;
    }

    public final void setDffVal1(String str) {
        l.e(str, "<set-?>");
        this.dffVal1 = str;
    }

    public final void setDffVal2(String str) {
        l.e(str, "<set-?>");
        this.dffVal2 = str;
    }

    public final void setDffVal3(String str) {
        l.e(str, "<set-?>");
        this.dffVal3 = str;
    }

    public final void setDffVal4(String str) {
        l.e(str, "<set-?>");
        this.dffVal4 = str;
    }

    public final void setDffVal5(String str) {
        l.e(str, "<set-?>");
        this.dffVal5 = str;
    }

    public final void setF(String str) {
        l.e(str, "<set-?>");
        this.f12653f = str;
    }

    public final void setG(String str) {
        l.e(str, "<set-?>");
        this.f12654g = str;
    }

    public final void setK(String str) {
        l.e(str, "<set-?>");
        this.f12655k = str;
    }

    public final void setMessageID(long j) {
        this.messageID = j;
    }

    public final void setMsgDate(Date date) {
        l.e(date, "<set-?>");
        this.msgDate = date;
    }

    public final void setO(String str) {
        l.e(str, "<set-?>");
        this.f12656o = str;
    }

    public final void setP(String str) {
        l.e(str, "<set-?>");
        this.f12657p = str;
    }

    public final void setS(String str) {
        l.e(str, "<set-?>");
        this.f12658s = str;
    }

    public final void setSpamCategory(int i) {
        this.spamCategory = i;
    }

    public final void setState(String str) {
        l.e(str, "<set-?>");
        this.state = str;
    }

    public final void setSyntheticRecordId(Long l) {
        this.syntheticRecordId = l;
    }

    public final void setVal1(String str) {
        l.e(str, "<set-?>");
        this.val1 = str;
    }

    public final void setVal2(String str) {
        l.e(str, "<set-?>");
        this.val2 = str;
    }

    public final void setVal3(String str) {
        l.e(str, "<set-?>");
        this.val3 = str;
    }

    public final void setVal4(String str) {
        l.e(str, "<set-?>");
        this.val4 = str;
    }

    public final void setVal5(String str) {
        l.e(str, "<set-?>");
        this.val5 = str;
    }
}
