.class public Ln7/n$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/n$a$a;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/n$a$a;


# direct methods
.method public constructor <init>(Ln7/n$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/n$a$a$b;->a:Ln7/n$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln7/n$a$a$b;->a:Ln7/n$a$a;

    iget-object v0, v0, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {v0}, Lk7/o;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket closed before proxy connect response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ln7/n$a$a$b;->a:Ln7/n$a$a;

    iget-object v1, v0, Ln7/n$a$a;->b:Ln7/n$a;

    iget-object v1, v1, Ln7/n$a;->a:Ll7/b;

    iget-object v0, v0, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {v1, p1, v0}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    return-void
.end method
