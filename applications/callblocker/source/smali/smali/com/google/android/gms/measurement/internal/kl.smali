.class final Lcom/google/android/gms/measurement/internal/kl;
.super Lcom/google/android/gms/measurement/internal/ki;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private g:Lcom/google/android/gms/internal/measurement/ag$e;

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/kf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/ki;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    .line 4
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/ao$k;Z)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ae:Lcom/google/android/gms/measurement/internal/dr;

    .line 11
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    .line 12
    if-eqz v0, :cond_2

    move v0, v1

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$e;->e()Z

    move-result v4

    .line 14
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ag$e;->f()Z

    move-result v5

    .line 15
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ag$e;->h()Z

    move-result v6

    .line 16
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_3

    :cond_0
    move v5, v1

    .line 17
    :goto_1
    if-eqz p4, :cond_5

    if-nez v5, :cond_5

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    iget v0, p0, Lcom/google/android/gms/measurement/internal/kl;->b:I

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 22
    :goto_2
    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :cond_1
    :goto_3
    return v1

    :cond_2
    move v0, v2

    .line 12
    goto :goto_0

    :cond_3
    move v5, v2

    .line 16
    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 21
    goto :goto_2

    .line 24
    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$e;->d()Lcom/google/android/gms/internal/measurement/ag$c;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->f()Z

    move-result v7

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->f()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v8

    if-nez v8, :cond_6

    .line 29
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v7, "No number filter for long property. property"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 31
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v8

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_4
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v7

    const-string/jumbo v8, "Property filter result"

    .line 75
    if-nez v3, :cond_e

    const-string/jumbo v4, "null"

    :goto_5
    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    if-nez v3, :cond_f

    move v1, v2

    .line 77
    goto :goto_3

    .line 35
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->g()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v3

    invoke-static {v8, v9, v3}, Lcom/google/android/gms/measurement/internal/kl;->a(JLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v3

    .line 36
    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_4

    .line 37
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->h()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v8

    if-nez v8, :cond_8

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v7, "No number filter for double property. property"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v8

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 45
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->i()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v3

    invoke-static {v8, v9, v3}, Lcom/google/android/gms/measurement/internal/kl;->a(DLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v3

    .line 46
    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_4

    .line 47
    :cond_9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->d()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->a()Z

    move-result v8

    if-nez v8, :cond_c

    .line 49
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v8

    if-nez v8, :cond_a

    .line 50
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v7, "No string or number filter defined. property"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v8

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 54
    :cond_a
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 56
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v3

    .line 57
    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_4

    .line 58
    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v7, "Invalid user property value for Numeric number filter. property, value"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 60
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v8

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->e()Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 65
    :cond_c
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$c;->b()Lcom/google/android/gms/internal/measurement/ag$f;

    move-result-object v4

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$f;Lcom/google/android/gms/measurement/internal/dy;)Ljava/lang/Boolean;

    move-result-object v3

    .line 66
    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_4

    .line 67
    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v7, "User property has no value, property"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kl;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 69
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v8

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    move-object v4, v3

    .line 75
    goto/16 :goto_5

    .line 78
    :cond_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/kl;->c:Ljava/lang/Boolean;

    .line 79
    if-eqz v6, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_10
    if-eqz p4, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$e;->e()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 82
    :cond_11
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/kl;->d:Ljava/lang/Boolean;

    .line 83
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$k;->b()J

    move-result-wide v2

    .line 86
    if-eqz p1, :cond_13

    .line 87
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 88
    :cond_13
    if-eqz v0, :cond_14

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->f()Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    .line 90
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 91
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->g:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->f:Ljava/lang/Long;

    goto/16 :goto_3

    .line 93
    :cond_15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kl;->e:Ljava/lang/Long;

    goto/16 :goto_3
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    return v0
.end method
