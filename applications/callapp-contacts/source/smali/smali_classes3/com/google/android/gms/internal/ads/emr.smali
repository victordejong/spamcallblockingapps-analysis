.class public final Lcom/google/android/gms/internal/ads/emr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/location/Location;

.field public final f:Z

.field final g:Landroid/os/Bundle;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field final j:Ljava/lang/String;

.field final k:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field final l:I

.field public final m:Landroid/os/Bundle;

.field final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final o:Z

.field final p:Lcom/google/android/gms/ads/query/AdInfo;

.field final q:I

.field final r:Ljava/lang/String;

.field final s:I

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/emu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/emr;-><init>(Lcom/google/android/gms/internal/ads/emu;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/emu;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->g:Ljava/util/Date;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->a:Ljava/util/Date;

    .line 1081
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->h:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->b:Ljava/lang/String;

    .line 1082
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->i:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->t:Ljava/util/List;

    .line 1083
    iget v0, p1, Lcom/google/android/gms/internal/ads/emu;->j:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/emr;->c:I

    .line 1084
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->a:Ljava/util/HashSet;

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->d:Ljava/util/Set;

    .line 1085
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->k:Landroid/location/Location;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->e:Landroid/location/Location;

    .line 1086
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/emu;->l:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/emr;->f:Z

    .line 1087
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->b:Landroid/os/Bundle;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->g:Landroid/os/Bundle;

    .line 1088
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->c:Ljava/util/HashMap;

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->h:Ljava/util/Map;

    .line 1089
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->m:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->i:Ljava/lang/String;

    .line 1090
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/emu;->n:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->j:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emr;->k:Lcom/google/android/gms/ads/search/SearchAdRequest;

    .line 1091
    iget p2, p1, Lcom/google/android/gms/internal/ads/emu;->o:I

    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/ads/emr;->l:I

    .line 1092
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/emu;->d:Ljava/util/HashSet;

    .line 17
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emr;->u:Ljava/util/Set;

    .line 1093
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/emu;->e:Landroid/os/Bundle;

    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emr;->m:Landroid/os/Bundle;

    .line 1094
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/emu;->f:Ljava/util/HashSet;

    .line 19
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emr;->n:Ljava/util/Set;

    .line 1095
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/emu;->p:Z

    .line 20
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/emr;->o:Z

    .line 1096
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/emu;->q:Lcom/google/android/gms/ads/query/AdInfo;

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emr;->p:Lcom/google/android/gms/ads/query/AdInfo;

    .line 1097
    iget p2, p1, Lcom/google/android/gms/internal/ads/emu;->r:I

    .line 22
    iput p2, p0, Lcom/google/android/gms/internal/ads/emr;->q:I

    .line 1098
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/emu;->s:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emr;->r:Ljava/lang/String;

    .line 1099
    iget p1, p1, Lcom/google/android/gms/internal/ads/emu;->t:I

    .line 24
    iput p1, p0, Lcom/google/android/gms/internal/ads/emr;->s:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emr;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    .line 1148
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emr;->u:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->g:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emr;->g:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
