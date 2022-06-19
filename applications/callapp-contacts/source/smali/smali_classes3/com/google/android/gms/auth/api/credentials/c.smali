.class public final Lcom/google/android/gms/auth/api/credentials/c;
.super Lcom/google/android/gms/auth/api/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/c$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/google/android/gms/auth/api/credentials/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/a$a$a;->a()Lcom/google/android/gms/auth/api/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/c;

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/c;->e:Lcom/google/android/gms/auth/api/credentials/c;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/a$a;-><init>(Lcom/google/android/gms/auth/api/a$a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/c$a;Lcom/google/android/gms/auth/api/credentials/i;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/c;-><init>(Lcom/google/android/gms/auth/api/credentials/c$a;)V

    return-void
.end method
