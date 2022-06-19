.class final Lcom/google/android/gms/measurement/internal/ki;
.super Lcom/google/android/gms/measurement/internal/kh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/kj;

.field private final h:Lcom/google/android/gms/internal/measurement/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/kj;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/kh;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 1000
    iget v0, v0, Lcom/google/android/gms/internal/measurement/az;->zze:I

    return v0
.end method

.method final a(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/cp;Z)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kk;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ki;->b:Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->X:Lcom/google/android/gms/measurement/internal/da;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 3000
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/az;->zzh:Z

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 4000
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/az;->zzi:Z

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 5000
    iget-boolean v3, v3, Lcom/google/android/gms/internal/measurement/az;->zzj:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz p4, :cond_3

    if-nez v1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 6000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 68
    iget p2, p0, Lcom/google/android/gms/measurement/internal/ki;->c:I

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 70
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/az;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 7000
    iget p3, p3, Lcom/google/android/gms/internal/measurement/az;->zze:I

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 71
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/az;->b()Lcom/google/android/gms/internal/measurement/ar;

    move-result-object v6

    .line 8000
    iget-boolean v7, v6, Lcom/google/android/gms/internal/measurement/ar;->zzg:Z

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/cp;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 9000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 13
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    .line 10000
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    .line 16
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 17000
    :cond_4
    iget-wide v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzh:J

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/ki;->a(JLcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v2

    .line 18
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_3

    .line 19
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/cp;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 18000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 22
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    .line 19000
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 24
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    .line 25
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 20000
    :cond_6
    iget-wide v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzj:D

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/ki;->a(DLcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v2

    .line 27
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_3

    .line 21000
    :cond_7
    iget v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_c

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->a()Z

    move-result v8

    if-nez v8, :cond_b

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 22000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 32
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    .line 23000
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 34
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    .line 35
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 24000
    :cond_9
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    .line 36
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 25000
    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    .line 37
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v2

    .line 38
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 26000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 40
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    .line 27000
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 42
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28000
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    .line 44
    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 29000
    :cond_b
    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ar;->b()Lcom/google/android/gms/internal/measurement/be;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 46
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 45
    invoke-static {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/be;Lcom/google/android/gms/measurement/internal/do;)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 48
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 30000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 49
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    .line 31000
    iget-object v8, p3, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 51
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    .line 52
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 11000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    if-nez v2, :cond_d

    const-string v7, "null"

    goto :goto_4

    :cond_d
    move-object v7, v2

    :goto_4
    const-string v8, "Property filter result"

    .line 55
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_e

    return v4

    :cond_e
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/ki;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_10

    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    return v5

    :cond_10
    :goto_5
    if-eqz p4, :cond_11

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 12000
    iget-boolean p4, p4, Lcom/google/android/gms/internal/measurement/az;->zzh:Z

    if-eqz p4, :cond_12

    .line 58
    :cond_11
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/ki;->e:Ljava/lang/Boolean;

    .line 59
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/cp;->a()Z

    move-result p4

    if-eqz p4, :cond_16

    .line 13000
    iget-wide p3, p3, Lcom/google/android/gms/internal/measurement/cp;->zze:J

    if-eqz p1, :cond_13

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_13
    if-eqz v0, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 14000
    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/az;->zzh:Z

    if-eqz p1, :cond_14

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 15000
    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/az;->zzi:Z

    if-nez p1, :cond_14

    if-eqz p2, :cond_14

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->h:Lcom/google/android/gms/internal/measurement/az;

    .line 16000
    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/az;->zzi:Z

    if-eqz p1, :cond_15

    .line 65
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->g:Ljava/lang/Long;

    goto :goto_6

    .line 66
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->f:Ljava/lang/Long;

    :cond_16
    :goto_6
    return v5
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
