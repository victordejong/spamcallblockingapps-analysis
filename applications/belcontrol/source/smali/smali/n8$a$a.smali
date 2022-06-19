.class public Ln8$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8$a;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Typeface;

.field public final synthetic b:Ln8$a;


# direct methods
.method public constructor <init>(Ln8$a;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Ln8$a$a;->b:Ln8$a;

    iput-object p2, p0, Ln8$a$a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln8$a$a;->b:Ln8$a;

    iget-object v1, p0, Ln8$a$a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ln8$a;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
