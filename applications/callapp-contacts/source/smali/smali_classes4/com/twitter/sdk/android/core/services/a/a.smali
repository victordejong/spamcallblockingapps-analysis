.class public final Lcom/twitter/sdk/android/core/services/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/services/a/a$a;
    }
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public final c:I

.field public final d:Lcom/twitter/sdk/android/core/services/a/a$a;


# direct methods
.method public constructor <init>(DDILcom/twitter/sdk/android/core/services/a/a$a;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/services/a/a;->a:D

    .line 51
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/services/a/a;->b:D

    .line 52
    iput p5, p0, Lcom/twitter/sdk/android/core/services/a/a;->c:I

    .line 53
    iput-object p6, p0, Lcom/twitter/sdk/android/core/services/a/a;->d:Lcom/twitter/sdk/android/core/services/a/a$a;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/twitter/sdk/android/core/services/a/a;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/services/a/a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/twitter/sdk/android/core/services/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/services/a/a;->d:Lcom/twitter/sdk/android/core/services/a/a$a;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/services/a/a$a;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
