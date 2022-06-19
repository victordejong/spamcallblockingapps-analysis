.class public Lex$b;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lex;


# direct methods
.method public constructor <init>(Lex;)V
    .locals 0

    iput-object p1, p0, Lex$b;->a:Lex;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 0

    iget-object p1, p0, Lex$b;->a:Lex;

    invoke-virtual {p1}, Lex;->l()V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    iget-object p1, p0, Lex$b;->a:Lex;

    invoke-virtual {p1}, Lex;->l()V

    return-void
.end method
