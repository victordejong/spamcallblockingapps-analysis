.class Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;
.super Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;ZZ)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;ZZZLjava/util/Map;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->c:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    iput-boolean p4, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->a:Z

    iput-object p5, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public getColorPrimary()I
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->a:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    const-string v1, "colorPrimary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    const-string v1, "darkColorPrimary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColorPrimaryDark()I
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->a:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    const-string v1, "colorPrimaryDark"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    const-string v1, "darkColorPrimaryDark"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColorPrimaryLight()I
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->a:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    const-string v1, "colorPrimaryLight"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$2;->b:Ljava/util/Map;

    const-string v1, "darkColorPrimaryLight"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
