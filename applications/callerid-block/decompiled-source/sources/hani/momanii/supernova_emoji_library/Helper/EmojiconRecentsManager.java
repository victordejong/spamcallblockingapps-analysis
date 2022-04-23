package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.content.SharedPreferences;
import hani.momanii.supernova_emoji_library.emoji.Emojicon;
import java.util.ArrayList;
import java.util.StringTokenizer;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager.class */
public class EmojiconRecentsManager extends ArrayList<Emojicon> {

    /* renamed from: b */
    private static final Object f12991b = new Object();

    /* renamed from: c */
    private static EmojiconRecentsManager f12992c;
    private Context mContext;

    private EmojiconRecentsManager(Context context) {
        this.mContext = context.getApplicationContext();
        m24k();
    }

    public static EmojiconRecentsManager getInstance(Context context) {
        if (f12992c == null) {
            synchronized (f12991b) {
                if (f12992c == null) {
                    f12992c = new EmojiconRecentsManager(context);
                }
            }
        }
        return f12992c;
    }

    /* renamed from: j */
    private SharedPreferences m25j() {
        return this.mContext.getSharedPreferences("emojicon", 0);
    }

    /* renamed from: k */
    private void m24k() {
        StringTokenizer stringTokenizer = new StringTokenizer(m25j().getString("recent_emojis", ""), "~");
        while (stringTokenizer.hasMoreTokens()) {
            try {
                add(new Emojicon(stringTokenizer.nextToken()));
            } catch (NumberFormatException e) {
            }
        }
    }

    public void add(int i, Emojicon emojicon) {
        super.add(i, (int) emojicon);
    }

    public boolean add(Emojicon emojicon) {
        return super.add((EmojiconRecentsManager) emojicon);
    }

    public int getRecentPage() {
        return m25j().getInt("recent_page", 0);
    }

    public void push(Emojicon emojicon) {
        if (contains(emojicon)) {
            super.remove(emojicon);
        }
        add(0, emojicon);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        return super.remove(obj);
    }

    public void saveRecents() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(get(i).m9d());
            if (i < size - 1) {
                sb.append('~');
            }
        }
        m25j().edit().putString("recent_emojis", sb.toString()).commit();
    }

    public void setRecentPage(int i) {
        m25j().edit().putInt("recent_page", i).commit();
    }
}
