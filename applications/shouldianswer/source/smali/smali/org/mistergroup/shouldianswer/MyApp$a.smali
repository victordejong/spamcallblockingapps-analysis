.class public final Lorg/mistergroup/shouldianswer/MyApp$a;
.super Ljava/lang/Object;
.source "MyApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/MyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/MyApp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/MyApp;
    .locals 2

    .line 150
    invoke-static {}, Lorg/mistergroup/shouldianswer/MyApp;->d()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "instance"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b()Landroid/content/ContentResolver;
    .locals 2

    .line 151
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "instance.contentResolver"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
