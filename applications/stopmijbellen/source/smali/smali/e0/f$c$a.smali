.class public Le0/f$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/f$c;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Typeface;

.field public final synthetic b:Le0/f$c;


# direct methods
.method public constructor <init>(Le0/f$c;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le0/f$c$a;->b:Le0/f$c;

    iput-object p2, p0, Le0/f$c$a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/f$c$a;->b:Le0/f$c;

    iget-object v1, p0, Le0/f$c$a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Le0/f$c;->e(Landroid/graphics/Typeface;)V

    return-void
.end method
