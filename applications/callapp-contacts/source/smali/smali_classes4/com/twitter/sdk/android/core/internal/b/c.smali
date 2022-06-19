.class public final Lcom/twitter/sdk/android/core/internal/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/twitter/sdk/android/core/internal/b/a;

.field public final b:Lcom/twitter/sdk/android/core/internal/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/b/a;",
            "Lcom/twitter/sdk/android/core/internal/b/d<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/b/c;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    .line 33
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/b/c;->b:Lcom/twitter/sdk/android/core/internal/b/d;

    .line 34
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/b/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/b/c;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/b/a;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/b/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/b/c;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/b/a;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/b/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/b/c;->b:Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-interface {v3, p1}, Lcom/twitter/sdk/android/core/internal/b/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/internal/b/a;->a(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method
