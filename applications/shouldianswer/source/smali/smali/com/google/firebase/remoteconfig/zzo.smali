.class final synthetic Lcom/google/firebase/remoteconfig/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzjt:Lcom/google/firebase/remoteconfig/RemoteConfigComponent;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/RemoteConfigComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/zzo;->zzjt:Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/zzo;->zzjt:Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    const-string v1, "firebase"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->get(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    return-object v0
.end method
