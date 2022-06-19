.class public final Lkm0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Llm0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm0;->a(Lkm0$d;Lkm0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkm0$c;

.field public final synthetic b:Lkm0$d;


# direct methods
.method public constructor <init>(Lkm0$c;Lkm0$d;)V
    .locals 0

    iput-object p1, p0, Lkm0$a;->a:Lkm0$c;

    iput-object p2, p0, Lkm0$a;->b:Lkm0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lkm0$a;->a:Lkm0$c;

    iget-object v1, p0, Lkm0$a;->b:Lkm0$d;

    invoke-static {v1}, Lkm0;->d(Lkm0$d;)Z

    move-result v1

    invoke-interface {v0, v1}, Lkm0$c;->a(Z)V

    return-void
.end method
