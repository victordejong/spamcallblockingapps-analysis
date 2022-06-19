.class public Lnv$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->Z(Lnv$j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnv$j0;

.field public final synthetic b:Lfv$b;


# direct methods
.method public constructor <init>(Lnv;Lnv$j0;Lfv$b;)V
    .locals 0

    iput-object p2, p0, Lnv$o;->a:Lnv$j0;

    iput-object p3, p0, Lnv$o;->b:Lfv$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnv$o;->a:Lnv$j0;

    iget-object v1, p0, Lnv$o;->b:Lfv$b;

    invoke-interface {v0, v1}, Lnv$j0;->a(Lfv$b;)V

    return-void
.end method
