.class public final Lcom/google/firebase/remoteconfig/internal/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/google/firebase/remoteconfig/internal/f;

.field final c:Ljava/lang/String;

.field private final d:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/g$a;->d:Ljava/util/Date;

    .line 535
    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/g$a;->a:I

    .line 536
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/g$a;->b:Lcom/google/firebase/remoteconfig/internal/f;

    .line 537
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/g$a;->c:Ljava/lang/String;

    return-void
.end method
