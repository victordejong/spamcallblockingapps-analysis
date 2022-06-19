.class public final Lorg/mistergroup/shouldianswer/model/ad$b;
.super Ljava/lang/Object;
.source "PhoneContacts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/mistergroup/shouldianswer/model/ad$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/e/b/e;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->a:J

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/e/b/e;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 298
    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object p5, p2

    check-cast p5, Ljava/lang/String;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/model/ad$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 298
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ad$b;->d:Ljava/lang/String;

    return-void
.end method
