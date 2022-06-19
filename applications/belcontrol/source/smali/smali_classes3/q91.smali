.class public final synthetic Lq91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lt91;

.field public final synthetic b:Lt91;


# direct methods
.method public synthetic constructor <init>(Lt91;Lt91;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq91;->a:Lt91;

    iput-object p2, p0, Lq91;->b:Lt91;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lq91;->a:Lt91;

    iget-object v1, p0, Lq91;->b:Lt91;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lt91;->p(Lt91;Ljava/lang/Void;)V

    return-void
.end method
