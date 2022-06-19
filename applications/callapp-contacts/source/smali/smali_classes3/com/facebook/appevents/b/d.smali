.class public Lcom/facebook/appevents/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.b.d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/b/d$a;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/b/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/appevents/b/d$a;-><init>(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
