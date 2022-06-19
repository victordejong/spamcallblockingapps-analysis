.class public Lcom/facebook/appevents/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/g$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "com.facebook.appevents.g"


# instance fields
.field public a:Lcom/facebook/appevents/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Lcom/facebook/appevents/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/appevents/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/h;

    return-void
.end method

.method public static a()I
    .locals 1

    .line 278
    invoke-static {}, Lcom/facebook/appevents/h;->a()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/appevents/g;
    .locals 2

    .line 210
    new-instance v0, Lcom/facebook/appevents/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-static {p0, p1}, Lcom/facebook/appevents/h;->a(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-static {p0, p1}, Lcom/facebook/appevents/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/g;
    .locals 2

    .line 251
    new-instance v0, Lcom/facebook/appevents/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 645
    invoke-static {p0}, Lcom/facebook/appevents/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 0

    .line 497
    invoke-static {}, Lcom/facebook/appevents/h;->c()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 547
    invoke-static {}, Lcom/facebook/appevents/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
