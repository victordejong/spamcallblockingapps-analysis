.class public final Lpv$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpv;->V(Landroid/os/Handler;Lmi;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmi;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lmi;I)V
    .locals 0

    iput-object p1, p0, Lpv$a;->a:Lmi;

    iput p2, p0, Lpv$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpv$a;->a:Lmi;

    iget v1, p0, Lpv$a;->b:I

    invoke-virtual {v0, v1}, Lmi;->A(I)V

    return-void
.end method
