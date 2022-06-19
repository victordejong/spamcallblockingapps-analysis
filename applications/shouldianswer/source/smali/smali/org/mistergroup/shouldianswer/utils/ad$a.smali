.class public final Lorg/mistergroup/shouldianswer/utils/ad$a;
.super Ljava/lang/Object;
.source "WebService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/utils/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->d:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 36
    iput p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/ad$a;->e:Lorg/json/JSONObject;

    return-object v0
.end method
