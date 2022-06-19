.class public Ln7/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/j;


# direct methods
.method public constructor <init>(Ln7/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/j$a;->a:Ln7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln7/j$a;->a:Ln7/j;

    .line 2
    iget-object v1, v0, Ln7/j;->k:Ln7/w;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/koushikdutta/async/http/ConnectionClosedException;

    const-string v2, "connection closed before headers received."

    invoke-direct {v1, v2, p1}, Lcom/koushikdutta/async/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ln7/j;->n(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-boolean v1, v0, Ln7/j;->l:Z

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/koushikdutta/async/http/ConnectionClosedException;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2, p1}, Lcom/koushikdutta/async/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ln7/j;->n(Ljava/lang/Exception;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Ln7/j;->n(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
