.class final Lcom/callapp/contacts/activity/contact/header/ThemeState$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/header/ThemeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNextTheme()Lcom/callapp/contacts/activity/contact/header/ThemeState;
    .locals 1

    .line 32
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARYDARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    return-object v0
.end method
