.class public final Lcom/google/android/gms/internal/measurement/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/x3<",
        "Lcom/google/android/gms/internal/measurement/ba;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/measurement/aa;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Lcom/google/android/gms/internal/measurement/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/aa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/aa;->c:Lcom/google/android/gms/internal/measurement/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ca;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->a(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/aa;->b:Lcom/google/android/gms/internal/measurement/x3;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/aa;->c:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()Lcom/google/android/gms/internal/measurement/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ba;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/aa;->c:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()Lcom/google/android/gms/internal/measurement/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ba;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/measurement/ba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aa;->b:Lcom/google/android/gms/internal/measurement/x3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/x3;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ba;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aa;->c()Lcom/google/android/gms/internal/measurement/ba;

    move-result-object v0

    return-object v0
.end method
