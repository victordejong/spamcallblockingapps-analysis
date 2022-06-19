.class public final Lcom/google/android/gms/internal/measurement/y8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/x3<",
        "Lcom/google/android/gms/internal/measurement/z8;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/measurement/y8;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Lcom/google/android/gms/internal/measurement/z8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/y8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/y8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/y8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/a9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/a9;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->a(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y8;->b:Lcom/google/android/gms/internal/measurement/x3;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/y8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/z8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z8;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/y8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/z8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z8;->b()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/y8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/z8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z8;->c()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/y8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/z8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z8;->f()Z

    move-result v0

    return v0
.end method

.method public static e()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/y8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/z8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z8;->a()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final f()Lcom/google/android/gms/internal/measurement/z8;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y8;->b:Lcom/google/android/gms/internal/measurement/x3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/x3;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/z8;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/z8;

    move-result-object v0

    return-object v0
.end method
