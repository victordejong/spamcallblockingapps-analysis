.class public Lwc$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwc$d;-><init>(Lwc$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwc$d;


# direct methods
.method public constructor <init>(Lwc$d;)V
    .locals 0

    iput-object p1, p0, Lwc$d$a;->a:Lwc$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lwc$d$a;->a:Lwc$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lwc$d;->d:J

    iget-object v0, p0, Lwc$d$a;->a:Lwc$d;

    iget-object v0, v0, Lwc$c;->a:Lwc$a;

    invoke-virtual {v0}, Lwc$a;->a()V

    return-void
.end method
