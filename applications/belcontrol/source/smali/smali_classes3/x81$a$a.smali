.class public Lx81$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx81$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx81$a;


# direct methods
.method public constructor <init>(Lx81$a;)V
    .locals 0

    iput-object p1, p0, Lx81$a$a;->a:Lx81$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lx81$a$a;->a:Lx81$a;

    iget-object v0, v0, Lx81$a;->a:Lx81;

    invoke-static {v0}, Lx81;->E(Lx81;)V

    return-void
.end method
