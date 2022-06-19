.class public Lcom/cocosw/bottomsheet/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocosw/bottomsheet/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/cocosw/bottomsheet/j$b;->d:I

    .line 3
    iput p1, p0, Lcom/cocosw/bottomsheet/j$b;->a:I

    .line 4
    iput-object p2, p0, Lcom/cocosw/bottomsheet/j$b;->c:Ljava/lang/CharSequence;

    return-void
.end method
