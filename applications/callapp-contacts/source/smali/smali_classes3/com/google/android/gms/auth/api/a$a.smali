.class public Lcom/google/android/gms/auth/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/a$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/auth/api/a$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/android/gms/auth/api/a$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/a$a$a;-><init>()V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/a$a$a;->a()Lcom/google/android/gms/auth/api/a$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/a$a;->a:Lcom/google/android/gms/auth/api/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/a$a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/auth/api/a$a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/auth/api/a$a$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/api/a$a;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/api/a$a;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/api/a$a;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/auth/api/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/api/a$a;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/a$a;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    .line 14
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1001
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
