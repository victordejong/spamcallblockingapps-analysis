.class public final Lcom/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/c/a/c;->a:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/c/a/c;->c:Z

    .line 12
    iput-boolean p3, p0, Lcom/c/a/c;->b:Z

    .line 13
    iput-boolean p4, p0, Lcom/c/a/c;->d:Z

    return-void
.end method
