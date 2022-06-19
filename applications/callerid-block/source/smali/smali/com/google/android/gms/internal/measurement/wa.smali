.class public final Lcom/google/android/gms/internal/measurement/wa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/x3<",
        "Lcom/google/android/gms/internal/measurement/xa;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/measurement/wa;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Lcom/google/android/gms/internal/measurement/xa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/wa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/wa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/wa;->c:Lcom/google/android/gms/internal/measurement/wa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ya;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ya;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->a(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/wa;->b:Lcom/google/android/gms/internal/measurement/x3;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/wa;->c:Lcom/google/android/gms/internal/measurement/wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wa;->f()Lcom/google/android/gms/internal/measurement/xa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xa;->zza()Z

    move-result v0

    return v0
.end method

.method public static b()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/wa;->c:Lcom/google/android/gms/internal/measurement/wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wa;->f()Lcom/google/android/gms/internal/measurement/xa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xa;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/wa;->c:Lcom/google/android/gms/internal/measurement/wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wa;->f()Lcom/google/android/gms/internal/measurement/xa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xa;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/wa;->c:Lcom/google/android/gms/internal/measurement/wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wa;->f()Lcom/google/android/gms/internal/measurement/xa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xa;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/wa;->c:Lcom/google/android/gms/internal/measurement/wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wa;->f()Lcom/google/android/gms/internal/measurement/xa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xa;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final f()Lcom/google/android/gms/internal/measurement/xa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/wa;->b:Lcom/google/android/gms/internal/measurement/x3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/x3;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/xa;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/wa;->f()Lcom/google/android/gms/internal/measurement/xa;

    move-result-object v0

    return-object v0
.end method
