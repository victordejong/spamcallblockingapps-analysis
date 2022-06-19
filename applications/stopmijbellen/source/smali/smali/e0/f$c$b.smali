.class public Le0/f$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/f$c;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le0/f$c;


# direct methods
.method public constructor <init>(Le0/f$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le0/f$c$b;->b:Le0/f$c;

    iput p2, p0, Le0/f$c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/f$c$b;->b:Le0/f$c;

    iget v1, p0, Le0/f$c$b;->a:I

    invoke-virtual {v0, v1}, Le0/f$c;->d(I)V

    return-void
.end method
