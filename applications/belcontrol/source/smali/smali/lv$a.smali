.class public final Llv$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llv;->g(Lzf;)Lls$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzf;


# direct methods
.method public constructor <init>(Lzf;)V
    .locals 0

    iput-object p1, p0, Llv$a;->a:Lzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lls;
    .locals 2

    new-instance v0, Llv;

    iget-object v1, p0, Llv$a;->a:Lzf;

    invoke-direct {v0, v1}, Llv;-><init>(Lzf;)V

    return-object v0
.end method
