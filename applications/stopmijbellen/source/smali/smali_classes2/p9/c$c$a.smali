.class public Lp9/c$c$a;
.super Laa/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/c$c;-><init>(Lr9/e$e;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr9/e$e;


# direct methods
.method public constructor <init>(Lp9/c$c;Laa/y;Lr9/e$e;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lp9/c$c$a;->b:Lr9/e$e;

    invoke-direct {p0, p2}, Laa/k;-><init>(Laa/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp9/c$c$a;->b:Lr9/e$e;

    invoke-virtual {v0}, Lr9/e$e;->close()V

    .line 2
    iget-object v0, p0, Laa/k;->a:Laa/y;

    invoke-interface {v0}, Laa/y;->close()V

    return-void
.end method
