.class public final Lcom/google/android/gms/internal/consent_sdk/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/bq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/consent_sdk/bq<",
        "Lcom/google/android/gms/internal/consent_sdk/cc;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/ch;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;Lcom/google/android/gms/internal/consent_sdk/bu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/m;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/ch;",
            ">;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/aa;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ce;->a:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/ce;->b:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/ce;->c:Lcom/google/android/gms/internal/consent_sdk/bu;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ce;->a:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/ce;->b:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/ce;->c:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/aa;

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/cc;

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/ch;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/cc;-><init>(Lcom/google/android/gms/internal/consent_sdk/m;Lcom/google/android/gms/internal/consent_sdk/ch;Lcom/google/android/gms/internal/consent_sdk/aa;)V

    return-object v3
.end method
