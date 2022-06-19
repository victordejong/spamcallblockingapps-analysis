.class public Lbi1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbi1;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbi1;


# direct methods
.method public constructor <init>(Lbi1;)V
    .locals 0

    iput-object p1, p0, Lbi1$a;->a:Lbi1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbi1$a;->a:Lbi1;

    invoke-static {v0}, Lbi1;->a(Lbi1;)V

    return-void
.end method
