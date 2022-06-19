.class public Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;
.super Lcom/google/android/gms/internal/firebase_remote_config/zzfp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_remote_config/zzhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzhi<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzfp<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zztg:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzti:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzfp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zztg:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    .line 3
    sget v0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zze;->zztp:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzti:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzjb;->zzii()Lcom/google/android/gms/internal/firebase_remote_config/zzjb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzjb;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_remote_config/zzjf;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzjf;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zztg:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    .line 47
    sget v1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zze;->zztq:I

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzha()Lcom/google/android/gms/internal/firebase_remote_config/zziq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzb(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/firebase_remote_config/zzfq;)Lcom/google/android/gms/internal/firebase_remote_config/zzfp;
    .locals 0

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzb(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzti:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    sget v1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zze;->zztp:I

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzti:Z

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V

    return-object p0
.end method

.method public final synthetic zzeo()Lcom/google/android/gms/internal/firebase_remote_config/zzfp;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;

    return-object v0
.end method

.method public final synthetic zzgw()Lcom/google/android/gms/internal/firebase_remote_config/zziq;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zztg:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    return-object v0
.end method

.method public zzgy()Lcom/google/android/gms/internal/firebase_remote_config/zzhi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzti:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zzes()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzti:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzth:Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    return-object v0
.end method

.method public final zzgz()Lcom/google/android/gms/internal/firebase_remote_config/zzhi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzha()Lcom/google/android/gms/internal/firebase_remote_config/zziq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_remote_config/zzjy;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzjy;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zziq;)V

    .line 19
    throw v1
.end method

.method public synthetic zzha()Lcom/google/android/gms/internal/firebase_remote_config/zziq;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzgy()Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzhb()Lcom/google/android/gms/internal/firebase_remote_config/zziq;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzb;->zzgz()Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    move-result-object v0

    return-object v0
.end method
