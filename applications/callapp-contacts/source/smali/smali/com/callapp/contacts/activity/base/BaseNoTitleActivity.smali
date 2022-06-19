.class public abstract Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThemeResId()I
    .locals 1

    .line 9
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getNoTitleTheme()I

    move-result v0

    return v0
.end method
