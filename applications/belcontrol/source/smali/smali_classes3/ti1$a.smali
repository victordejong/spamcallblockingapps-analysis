.class public Lti1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lti1;


# direct methods
.method public constructor <init>(Lti1;)V
    .locals 0

    iput-object p1, p0, Lti1$a;->a:Lti1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lti1$a;->a:Lti1;

    invoke-static {v0}, Lti1;->e(Lti1;)V

    return-void
.end method
