.class public final Lcom/twitter/sdk/android/core/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/a$a;,
        Lcom/twitter/sdk/android/core/internal/a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/twitter/sdk/android/core/internal/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 54
    new-instance v0, Lcom/twitter/sdk/android/core/internal/a$a;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/a$a;

    return-void
.end method
