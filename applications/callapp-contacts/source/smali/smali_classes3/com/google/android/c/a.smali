.class public final Lcom/google/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/c/a$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method private constructor <init>(ZLcom/google/android/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/c/a;->a:Z

    .line 1016
    iget p1, p2, Lcom/google/android/c/a$a;->b:I

    .line 3
    iput p1, p0, Lcom/google/android/c/a;->b:I

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/c/a$a;Lcom/google/android/c/g;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/c/a;-><init>(ZLcom/google/android/c/a$a;)V

    return-void
.end method
