.class public final Lcom/google/android/gms/internal/consent_sdk/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/bq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/consent_sdk/bq<",
        "Lcom/google/android/gms/internal/consent_sdk/ak;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/ai;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/bx;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/k;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Landroid/app/Application;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/ai;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/bx;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/k;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->a:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->b:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->c:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->d:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->e:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->f:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->g:Lcom/google/android/gms/internal/consent_sdk/bu;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->a:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->b:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/ai;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->c:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->d:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->e:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/consent_sdk/bx;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->f:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/consent_sdk/k;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ap;->g:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/consent_sdk/u;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/ak;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/consent_sdk/ak;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/ai;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/consent_sdk/bx;Lcom/google/android/gms/internal/consent_sdk/k;Lcom/google/android/gms/internal/consent_sdk/u;)V

    return-object v0
.end method
