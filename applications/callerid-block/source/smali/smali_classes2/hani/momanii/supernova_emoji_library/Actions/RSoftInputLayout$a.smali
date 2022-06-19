.class Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;->b:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;->b:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->onSizeChanged(IIII)V

    return-void
.end method
