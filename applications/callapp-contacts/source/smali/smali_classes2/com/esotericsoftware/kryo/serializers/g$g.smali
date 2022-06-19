.class public Lcom/esotericsoftware/kryo/serializers/g$g;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/esotericsoftware/kryo/serializers/g$ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 589
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    .line 593
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/g$ag;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/g$ag;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/g$g;->a:Lcom/esotericsoftware/kryo/serializers/g$ag;

    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 589
    check-cast p2, Ljava/util/Calendar;

    .line 1620
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 2608
    const-class p1, Ljava/util/TimeZone;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/g$ag;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p3, 0x1

    .line 2609
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2610
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 2611
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 2612
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 p3, 0x0

    .line 2613
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    move-result-wide p2

    const-wide v0, -0xb1d069b5400L

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 2615
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    :cond_0
    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 589
    check-cast p3, Ljava/util/Calendar;

    .line 3596
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/g$ag;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/util/TimeZone;)V

    .line 3597
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    .line 3598
    invoke-virtual {p3}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(Z)V

    .line 3599
    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    .line 3600
    invoke-virtual {p3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    .line 3601
    instance-of p1, p3, Ljava/util/GregorianCalendar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3602
    check-cast p3, Ljava/util/GregorianCalendar;

    invoke-virtual {p3}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    return-void

    :cond_0
    const-wide v1, -0xb1d069b5400L

    .line 3604
    invoke-virtual {p2, v1, v2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    return-void
.end method
