.class public Lcom/facebook/a/g;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/facebook/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lcom/facebook/a/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V

    iput-object v0, p0, Lcom/facebook/a/g;->b:Lcom/facebook/a/h;

    .line 318
    return-void
.end method

.method public static a()Lcom/facebook/a/g$a;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/facebook/a/h;->a()Lcom/facebook/a/g$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/a/g;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    new-instance v0, Lcom/facebook/a/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    invoke-static {p0, p1}, Lcom/facebook/a/h;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    invoke-static {p0, p1}, Lcom/facebook/a/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    invoke-static {p0}, Lcom/facebook/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 572
    invoke-static {}, Lcom/facebook/a/h;->c()V

    .line 573
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    invoke-static {}, Lcom/facebook/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/a/g;->b:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/a/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/facebook/a/g;->b:Lcom/facebook/a/h;

    invoke-virtual {v0}, Lcom/facebook/a/h;->b()V

    .line 562
    return-void
.end method
