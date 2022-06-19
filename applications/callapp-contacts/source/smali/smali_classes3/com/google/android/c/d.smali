.class public final Lcom/google/android/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/c/d$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/c/a;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/c/d$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iget-boolean v0, p1, Lcom/google/android/c/d$a;->a:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/android/c/d;->a:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/c/d;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/google/android/c/d;->d:I

    .line 11
    iput-object v0, p0, Lcom/google/android/c/d;->f:Ljava/lang/String;

    .line 1011
    iget-object v0, p1, Lcom/google/android/c/d$a;->b:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/c/d;->b:Ljava/lang/String;

    .line 1012
    iget-object p1, p1, Lcom/google/android/c/d$a;->c:Lcom/google/android/c/a;

    .line 13
    iput-object p1, p0, Lcom/google/android/c/d;->c:Lcom/google/android/c/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/c/d$a;Lcom/google/android/c/h;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/c/d;-><init>(Lcom/google/android/c/d$a;)V

    return-void
.end method
