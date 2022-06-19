.class public final Lcom/google/android/gms/b/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/b/a;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/Long;

.field private final j:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/google/android/gms/b/a$a;

    invoke-direct {v0}, Lcom/google/android/gms/b/a$a;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/gms/b/a;

    move v2, v1

    move v4, v1

    move-object v5, v3

    move-object v6, v3

    move v7, v1

    move-object v8, v3

    move-object v9, v3

    .line 57
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/b/a;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 58
    sput-object v0, Lcom/google/android/gms/b/a;->a:Lcom/google/android/gms/b/a;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/gms/b/a;->b:Z

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/b/a;->c:Z

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/b/a;->d:Ljava/lang/String;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/b/a;->e:Z

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/b/a;->h:Z

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/b/a;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/b/a;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/b/a;->i:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/b/a;->j:Ljava/lang/Long;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/b/a;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/b/a;->c:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/b/a;->e:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    if-ne p1, p0, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v0

    .line 14
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    check-cast p1, Lcom/google/android/gms/b/a;

    .line 17
    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->b:Z

    iget-boolean v3, p1, Lcom/google/android/gms/b/a;->b:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/b/a;->c:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/a;->d:Ljava/lang/String;

    .line 18
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->e:Z

    iget-boolean v3, p1, Lcom/google/android/gms/b/a;->e:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/b/a;->h:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/a;->f:Ljava/lang/String;

    .line 19
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/a;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/a;->g:Ljava/lang/String;

    .line 20
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/a;->i:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/b/a;->i:Ljava/lang/Long;

    .line 21
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/a;->j:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/b/a;->j:Ljava/lang/Long;

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 23
    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/b/a;->h:Z

    return v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/b/a;->i:Ljava/lang/Long;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->b:Z

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->c:Z

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/b/a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->e:Z

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/b/a;->h:Z

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/b/a;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/b/a;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/b/a;->i:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/b/a;->j:Ljava/lang/Long;

    aput-object v2, v0, v1

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/b/a;->j:Ljava/lang/Long;

    return-object v0
.end method
